
import 'package:flutter/material.dart';

class WeightContainer extends StatefulWidget {
  const WeightContainer({super.key});

  @override
  State<WeightContainer> createState() => _WeightContainerState();
}

class _WeightContainerState extends State<WeightContainer> {
int weight = 0;
int Age = 0;

int maxvalue = 100;
int minvalue = 0;

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

  @override
  Widget build(BuildContext context) {
    return Container(
                
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                    color: Color(0XFF262A4C),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('Weight',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),
                    Center(child: Text('$weight',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)),
                    // In this row we add the sign of addition and substraction
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
                          child: IconButton(onPressed: incrementcounter, 
                          icon: Icon(Icons.add,color:Colors.white,)),
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
                          child: IconButton(onPressed: decrementcounter, 
                          icon: Icon(Icons.remove,color: Colors.white,)
                          ),
                        ),
                      ],
                    ),
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
                  ]
                  ),
  ]
  ),
    );
  }
}