
import 'package:flutter/material.dart';
import 'package:this_theproject/widgets/fourth_container.dart';
import 'secondscreen.dart';

void main () {
  runApp(const myapp());
}
// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homescreen(),
    );
  }
}
// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

// ignore: camel_case_types
class _homescreenState extends State<homescreen> {
double _currentHeight = 183;
int weight = 0;
// ignore: non_constant_identifier_names
int Age = 0;
int minvalue = 0;
int maxvalue = 100;


void counterincrement () {

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
      backgroundColor: const Color(0XFF0B1034),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        
        title: const Text('BMI CALCULATOR',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        
        leading: const Icon(Icons.menu,color: Colors.white,),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
          // In this row we add to containers and their data 
          
          //Here the row ends 
          const SizedBox(height: 30,),
          // From here the 3rd container will be start and add a new row for the container
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color: const Color(0XFF262A4C),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('height',style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                    ),
                    Text(
                      '${_currentHeight.toInt()} cm',
                      style: const TextStyle(
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
          const SizedBox(height: 20,),
          // From here we add  a new row top add 2more container 
          Row(
             children: [
              const SizedBox(width: 20,),
              // This is the 4th container 

              const WeightContainer(),
              const SizedBox(width: 50,),
               //This is the 5th container
              Container(
                             
                              height: 150,
                              width: 150,
                             
                              decoration: BoxDecoration(
              border: Border.all(style: BorderStyle.solid),
               color: const Color(0XFF262A4C),
                              ),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                   const Center(child: Text('Age',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),
                    Center(child: Text('$Age',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)),
                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        // This is the container for the addition sign 
                        Container(
                          height: 50,
                          width: 50,
                          
                          decoration: BoxDecoration(
                            color: const Color(0xFF222847),
                            borderRadius: BorderRadius.circular(20),
                                          
                          ),
                          child: IconButton(onPressed: counterincrement, 
                          icon: const Icon(Icons.add,color: Colors.white,)),
                        ),
                        const SizedBox(width: 15,),
                        // This is the container for the substraction sign
                        Container(
                          height: 50,
                          width: 50,
                          
                          decoration: BoxDecoration(
                            color: const Color(0xFF222847),
                            borderRadius: BorderRadius.circular(20),
                                          
                          ),
                          child: IconButton(onPressed:counterdecrement , 
                          icon: const Icon(Icons.remove,color: Colors.white,)),
                        ),
                      ],
                    ),
                                ],
                              ),
                              
                            ),
              
            ],
        
          ),
          const SizedBox(height: 30,),
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
                  child: const Center(child: Text('On press',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
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
// ignore: camel_case_types
