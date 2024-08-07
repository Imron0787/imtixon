



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;





class ASA extends StatefulWidget {
  const ASA({super.key});

  @override
  State<ASA> createState() => _ASAState();
}

class _ASAState extends State<ASA> {
  List<Map<String, dynamic>> data= [];
dynamic nom =[];

Future<void> funksiya()async{
  final response = await http.get(Uri.parse("https://cbu.uz/uz/arkhiv-kursov-valyut/json/"));
  if(response.statusCode ==200){
    final List<dynamic> jsonData = json.decode(response.body);
    for(var narsa in jsonData){
      data.add(Map<String, dynamic>.from(narsa));
      
    }
    setState(() {
      
    });
  }else{
    throw Exception("failed");
  }
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    funksiya();
  }
  DateTime selectedDate = DateTime.now();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("Valyuta kurslari",style: TextStyle(color: Colors.white),)),
            SizedBox(width: 20,),
            Expanded(child: Text("0${selectedDate.month}-0${selectedDate.day}-${selectedDate.year}",style: TextStyle(color: Colors.white),))
          ],
        ),
        backgroundColor: Color.fromARGB(255, 59, 31, 186),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index){
          return 
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("updated day")
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("${data[index]["Date"]}")
                  ],
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("${data[index]["Ccy"]}"),
                    Column(
                      children: [
                        Text("${data[index]["CcyNm_UZ"]} (${data[index]["Code"]})",style: TextStyle(color: const Color.fromARGB(255, 46, 57, 217)),),
                        Text("${data[index]["Rate"]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text("${data[index]["Diff"]}")
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 2,width: double.infinity,
                  color: Colors.black,
                )
              ],
            ),
          );
        }),
    );
  }
}