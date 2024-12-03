import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:this_theproject/widgets/fourth_container.dart';
import 'secondscreen.dart';

void main () {
  runApp(const myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
    );
  }
}
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
double _currentHeight = 183;
int weight = 0;
int Age = 0;
int minvalue = 0;
int maxvalue = 100;
String selectedGender = '';
void incrementcounter () {
  if(weight<maxvalue){
  setState(() {
    weight++;
  });
}
}
void decrementcounter (){
  if(weight>minvalue){
  setState(() {
  
    weight--;
    
  });
}
}
void counterincrement () {
  int d = 20;
  if(Age<maxvalue){
  setState(() {
    Age++;
  });
}
}

void counterdecrement () {
  if(Age>0){
  setState(() {
    Age--;
  });
}
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0B1034),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        
        title: Text('BMI CALCULATOR',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        
        leading: Icon(Icons.menu,color: Colors.white,),
        
      ),
      body: Padding(
        padding: EdgeInsets.all(11),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
          // In this row we add to containers and their data 
          Row(
            children: [
              SizedBox(width: 20,),
              // This is the container 1 
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender='male';
                  });
                },
                child: Container(
                  // This is the size and specification of container that how it looks 
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.solid),
                    color : selectedGender == 'male'
                    ? Colors.blue
                      : Color(0XFF262A4C),
                  ),
                  // IN this we add icon nad text that display in the container 1 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male,color: Colors.white,size: 70,weight: 20,),
                      Text('Male',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 50,),
              // From here the 2nd container will be start female
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender='female';
                  });
                },
                child: Container(
                               
                                height: 150,
                                width: 150,
                               
                                decoration: BoxDecoration(
                border: Border.all(style: BorderStyle.solid),
                 color: selectedGender == 'female'
                ?Colors.pink
                 : Color(0XFF262A4C),
                                ),
                                //From here we display the icon and text display in container 2
                                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female,color: Colors.white,size: 70,weight: 20,),
                      Text('Female',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),)
                    ],
                  ),
                              ),
              ),
            ],
          ),
          //Here the row ends 
          SizedBox(height: 30,),
          // From here the 3rd container will be start and add a new row for the container
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color: Color(0XFF262A4C),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('height',style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                    ),
                    Text(
                      '${_currentHeight.toInt()} cm',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Slider(value: _currentHeight,
                    min: 100,
                    max: 200,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.grey,
                     onChanged: (double value){
                      setState(() {
                        _currentHeight=value;
                      });
                    })
                  ],
                ) ,
              ),
             ],
          ),
          // here the row ends
          SizedBox(height: 20,),
          // From here we add  a new row top add 2more container 
          Row(
             children: [
              SizedBox(width: 20,),
              // This is the 4th container 

              WeightContainer(),
              SizedBox(width: 50,),
               //This is the 5th container
              Container(
                             
                              height: 150,
                              width: 150,
                             
                              decoration: BoxDecoration(
              border: Border.all(style: BorderStyle.solid),
               color: Color(0XFF262A4C),
                              ),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                   Center(child: Text('Age',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),
                    Center(child: Text('$Age',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        // This is the container for the addition sign 
                        Container(
                          height: 50,
                          width: 50,
                          
                          decoration: BoxDecoration(
                            color: Color(0xFF222847),
                            borderRadius: BorderRadius.circular(20),
                                          
                          ),
                          child: IconButton(onPressed: counterincrement, 
                          icon: Icon(Icons.add,color: Colors.white,)),
                        ),
                        SizedBox(width: 15,),
                        // This is the container for the substraction sign
                        Container(
                          height: 50,
                          width: 50,
                          
                          decoration: BoxDecoration(
                            color: Color(0xFF222847),
                            borderRadius: BorderRadius.circular(20),
                                          
                          ),
                          child: IconButton(onPressed:counterdecrement , 
                          icon: Icon(Icons.remove,color: Colors.white,)),
                        ),
                      ],
                    ),
                                ],
                              ),
                              
                            ),
              
            ],
        
          ),
          SizedBox(height: 30,),
          // THis is the 6th container 
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(onTap: () { 
             Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Secondscreen(), // Ensure `const` if required
      ),
    );
              },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,),color: Colors.pink,
                  ),
                  child: Center(child: Text('On press',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
                  ),
                  
              ),
            
              
              
              
            ],
          ),
         ],
               ),
        ),
    );
  }
}




