import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore db = FirebaseFirestore.instance;
  db.collection('produtos').doc('lapis de cor').set({'preco':'43,90'});
  runApp(MaterialApp(home: TesteReserva(),debugShowCheckedModeBanner: false,));
}
class TesteReserva extends StatefulWidget {
  const TesteReserva({ Key? key }) : super(key: key);

  @override
  State<TesteReserva> createState() => _TesteReservaState();
}

class _TesteReservaState extends State<TesteReserva> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('seja bem vindo',style: TextStyle(color: Colors.white,),),
      centerTitle: true,
      backgroundColor: Colors.green,
      ),
    );
  }
}
