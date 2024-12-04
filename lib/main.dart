
import 'package:flutter/material.dart';

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

int weight = 0;
// ignore: non_constant_identifier_names
int minvalue = 0;
int maxvalue = 100;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0B1034),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        
        title: const Text('BMI CALCULATOR',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        
        leading: const Icon(Icons.menu,color: Colors.white,),
        
      ),
      body: const Padding(
        padding: EdgeInsets.all(11),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
          
          
          //Here the row ends 
          SizedBox(height: 30,),
          // From here the 3rd container will be start and add a new row for the container
          
          // here the row ends
         
                                ],
                              ),
                              
                            ),
              
            
        
          
          
          // THis is the 6th container 

    );
  }
}
// ignore: camel_case_types

