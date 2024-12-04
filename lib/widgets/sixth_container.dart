import 'package:flutter/material.dart';
import 'package:this_theproject/secondscreen.dart';

class SixthContainer extends StatefulWidget {
  const SixthContainer({super.key});

  @override
  State<SixthContainer> createState() => _SixthContainerState();
}

class _SixthContainerState extends State<SixthContainer> {
  @override
  Widget build(BuildContext context) {
    return          Row(
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
          );
  }
}