import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen ({super.key}); 

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10; //Propiedad de esta clase

  void increase(){
    setState(() {
      counter++;
    });
  }

  void reset(){
    setState(() {
      counter =0;
    });
  }

  void dicrease(){
     setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    // TextStyle fontSize30 = const TextStyle(fontSize: 30);
 

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador de Clicks', style: TextStyle(fontSize: 30),),
            Text('$counter', style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  CustomFloatingActions(increaseFunction: increase, dicreaseFunction: dicrease, resetFunction: reset,),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFunction;
  final Function dicreaseFunction;
  final Function resetFunction;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFunction,
    required this.dicreaseFunction,
    required this.resetFunction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFunction(),
          ),
        
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () => resetFunction(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed:() => dicreaseFunction(),
          ),
      ],
    );
  }
}