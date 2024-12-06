// ignore: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class selectedGender extends StatefulWidget {
  const selectedGender({super.key});

  @override
  State<selectedGender> createState() => _selectedGenderState();
}

// ignore: camel_case_types
class _selectedGenderState extends State<selectedGender> {
  String selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              const SizedBox(width: 20,),
              // This is the container 1 
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender='male';
                  });
                },
                child: Container(
                  // This is the size and specification of container that how it looks 
                  height: 160,
                  width: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color : selectedGender == 'male'
                    ? Colors.blue
                      : const Color(0XFF262A4C),
                  ),
                  // IN this we add icon nad text that display in the container 1 
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male,color: Colors.white,size: 70,weight: 20,),
                      Text('Male',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              // From here the 2nd container will be start female
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender='female';
                  });
                },
                child: Container(
                               
                                height: 160,
                                width: 175,
                               
                                decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                 color: selectedGender == 'female'
                ?Colors.pink
                 : const Color(0XFF262A4C),
                                ),
                                //From here we display the icon and text display in container 2
                                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female,color: Colors.white,size: 70,weight: 20,),
                      Text('Female',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),)
                    ],
                  ),
                              ),
              ),
            ],
          );
  }
}




