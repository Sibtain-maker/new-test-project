import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:this_theproject/main.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: Uisecound()
    );
  }
}
class Uisecound extends StatefulWidget {
  const Uisecound({super.key});

  @override
  State<Uisecound> createState() => _UisecoundState();
}

class _UisecoundState extends State<Uisecound> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:  Scaffold(
     backgroundColor: Color(0XFF0A0D22),
      appBar: AppBar(
        leading: const  Icon(Icons.menu,color: Colors.white,),
        title:const  Text('BMI calculator',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0XFF0A0D22),
      ),
      body:  Column(
        children: [
          const SizedBox(height: 20,),
         const  Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Text('YOUR RESULT',style:TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              ),
            ],
           ),
         const  SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color:const  Color(0XFF1D1F33)
                ),
                child: Column(
                  
                  children: [
                  const  SizedBox(height: 10,),
                  const  Padding(
                      padding:  EdgeInsets.all(8.0),
                      
                      child: Text('NORMAL',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 20,),
                    const Text('22.2',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                    const Text('Normal BMI range :',style: TextStyle(color: Colors.white30,fontSize: 20,),),
                    const Text('18,5 - 25kg/m2',style:TextStyle(color: Colors.white,fontSize: 20),),
                    const SizedBox(height: 30,),
                    const Text('You heve a NORMAL body WEIGHT Good JOb. Keep it',style: TextStyle(color: Colors.white,height: 1.5),textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        color: const Color(0XFF181A2E)
                      ),
                      child: const Center(child: Text('Save Result',style: TextStyle(color: Colors.white30),)),

                    )
                  ],
                ),
              ),
            ],
           ),
           const SizedBox(height: 64,),
           Container(
          
            height: 80,
            width: 400,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink,
            ),
            child: GestureDetector(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return const homescreen();
                }
                ),
                );
               }, child: const Center(child: Text('RETURN BACK',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
            
           )
           ,
        ],
      ),
    )
    );
  }
}