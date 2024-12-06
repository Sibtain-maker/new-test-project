import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {
  const SliderContainer({super.key});

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _currentHeight = 183;
  @override
  Widget build(BuildContext context) {
    return Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Container(
                width: 355,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
          );
  }
}