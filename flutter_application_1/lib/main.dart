








import 'package:flutter/material.dart';
import 'package:flutter_application_1/birinchi%20sahifa.dart';
import 'package:flutter_application_1/ikkinchi%20sahifa.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "bir",
    routes: {
      "bir":((context)=>As()),
      "ikki":((context)=>ASA()),
    },
  ));
}