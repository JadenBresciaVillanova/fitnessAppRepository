import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Test extends StatefulWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> mondayWorkouts = FirebaseFirestore.instance.collection('mondayWorkouts').snapshots();
    
    return Scaffold (
      appBar: AppBar( 
        title: Text("PAGE")
        ), 
      body: StreamBuilder<QuerySnapshot>(
      stream: mondayWorkouts,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
            DocumentSnapshot document = snapshot.data!.docs[index];
            Map<String, dynamic> data = document.data() as Map<String, dynamic>; 
                return CheckboxListTile(
                   title: Text(data['workoutName']),
                  value: data['value'],
                  onChanged: (bool? value) {
                    FirebaseFirestore.instance.collection('mondayWorkouts').doc(document.id).update({'value': value!},);
                  }
                );           
           }
        );
      },
    ),
    );
  }
}
