import 'package:flutter/material.dart';

class Soloiscontainer extends StatefulWidget {
  const Soloiscontainer({super.key});

  @override
  State<Soloiscontainer> createState() => _SoloiscontainerState();
}

class _SoloiscontainerState extends State<Soloiscontainer> {
  int weight = 0;
  int maxvalue = 100;
  int minvalue = 0;
  int Age = 0;
  void incrementcounter  () {
    if(weight<maxvalue) {
      setState(() {
      weight++;
    });
    }
  }
  void decrementcounter (){
    if(weight>minvalue) {
      setState(() {
      weight--;
    });
    }
  }
  void counterincrement (){
    if(Age<maxvalue) {
      setState(() {
      Age++;
    });
    }
  }
  void counterdecrement (){
    if(Age>minvalue) {
      setState(() {
      Age--;
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20,),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:const Color(0XFF262A4C),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('weight',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Text('$weight',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
              const SizedBox(height: 10,),
              //now here we add a row to add two more container
              Row(
                children: [
                  const SizedBox(width: 20,),
                  Center(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(style: BorderStyle.none),
                        color: const Color(0XFF222747)
                      ),
                      child: Center(child: IconButton(onPressed:incrementcounter , icon: const Icon(Icons.add,color: Colors.white,))),
                    ),
                  ),
                  const SizedBox(width: 20,),
                   Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0XFF222747),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(onPressed: decrementcounter, icon: const Icon(Icons.remove,color: Colors.white,)),
                   ),
                   
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: 50,),
        Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFF262A4C),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Age',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                        Text('$Age',style: TextStyle(color: Colors.white,fontSize: 20),),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const SizedBox(width: 30,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0XFF222747),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(onPressed: counterincrement, icon: const Icon(Icons.add,color: Colors.white,)),

                            ),
                            const SizedBox(width:20,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0XFF222747),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(onPressed: counterdecrement, icon: const Icon(Icons.remove,color: Colors.white,)),

                            ),
                          ],
                        )
                      ],
                    ),
                   ),
      ],
    );
  }
}