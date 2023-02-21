import 'package:count_app/screens/counter_screen.dart';

import 'package:flutter/material.dart';
// import 'package:count_app/screens/home_screen.dart';

void main(){
  runApp( const MyApp() );
}


class MyApp extends StatelessWidget{

  const MyApp({super.key}); //el key hace referencia al widget

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      //Le colocamos const al widget MaterialApp debido a que nunca cambiara
      debugShowCheckedModeBanner: false,
      // home: HomeScreen()
      home: CounterScreen()
    );
  }
}