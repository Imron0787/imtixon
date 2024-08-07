
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter_application_1/ikkinchi%20sahifa.dart';
import 'package:lottie/lottie.dart';
// import 'package:salom/sa.dart';





class As extends StatefulWidget {
  const As({super.key});

  @override
  State<As> createState() => _AsState();
}



final LinearGradient _gradient = LinearGradient(colors: <Color>[
  
  Colors.blue,
  Colors.green,
]
);

List images =[
  "rasmlar/q1.png",
  "rasmlar/q2.png",
  "rasmlar/q3.png",
  "rasmlar/q4.png",
  "rasmlar/q5.png",
  "rasmlar/q6.png",
  "rasmlar/q7.png",
  "rasmlar/q8.png",
  "rasmlar/q9.png",
  "rasmlar/q10.png",
  "rasmlar/q11.png",
  "rasmlar/q12.png",
  "rasmlar/q13.png",
  "rasmlar/q14.png",
  "rasmlar/q15.png",
  "rasmlar/q16.png",
  "rasmlar/q17.png",
  "rasmlar/q18.png",
  "rasmlar/q19.png",
  "rasmlar/q20.png",
  "rasmlar/q21.png",
  "rasmlar/q22.png",
  "rasmlar/q23.png",
  "rasmlar/q24.png",
  "rasmlar/q25.png",
  "rasmlar/q26.png",
  "rasmlar/q27.png",
  "rasmlar/q28.png",
  "rasmlar/q29.png",
  "rasmlar/q30.png",
];





class _AsState extends State<As> {
  TextEditingController text2 = TextEditingController();
String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ASA()));
              },
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage("rasmlar/money.png"),fit: BoxFit.cover)
                  ),
                  
                ),
              ),
              ShaderMask(shaderCallback: (Rect rect){
                return _gradient.createShader(rect);
              },
              child: Text("flutter",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold)),
              ),
              InkWell(onTap: () {
                showDialog(context: context, builder: (context)=> AlertDialog(
                  actions: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextField(
                            controller: text2,
                          onChanged: (value) {
                            setState(() {
                              text = value;
                            });
                          },
                            autofocus: true,
                            maxLength: 2,
                            decoration: InputDecoration(
                              hintText: "enter your name",
                              border: OutlineInputBorder()
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("ok")),
                        SizedBox(width: 5,),
                        ElevatedButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("back")),
                      ],
                    )
                  ],
                ));
              },
                child: Container(
                  height: 35,width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    
                  ),
                  child: Lottie.asset("rasmlar/button.json"),
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("HIS AGE",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(text,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("/100",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("OVERALL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasmlar/heart2.png"))),),
                      SizedBox(width: 7,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("34",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("/100",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Text("Energy",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasmlar/gg.png"))),),
                      SizedBox(width: 7,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("24",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("/100",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Text("Smart",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasmlar/lightning.png"))),),
                      SizedBox(width: 7,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("54",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("/100",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Text("Speed",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      )
                    ],
                  ),
                ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    height: 290,width: 200,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("rasmlar/o'zim2.png"),fit: BoxFit.cover)
                    ),
                    
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text("Old memory")
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding:  EdgeInsets.all(10),
            child: Container(
              height: 250,width: 400,
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(50),
              ),
              child: CarouselSlider(items: images.map((e) => Padding(
                padding:  EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: InkWell(onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>SA()));
                  },
                    child: Image.asset(e,fit: BoxFit.cover,)),
                ),
              ),).toList(),
               options: CarouselOptions(
                initialPage: 1,
                autoPlay: true,
                reverse: false,
                autoPlayAnimationDuration: Duration(seconds: 2),
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                enlargeFactor: 0.4
               )),
            ),
          )
        ],
      ),
    );
  }
}