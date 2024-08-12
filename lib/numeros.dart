import 'package:flutter/material.dart';

class MyNumbers extends StatefulWidget {
  const MyNumbers({super.key});

  @override
  State<MyNumbers> createState() => _MyNumbersState();
}

class _MyNumbersState extends State<MyNumbers> {
   var n = 1;

  void mudaP() {
    // mudança para par:
    setState(() {
      if (n % 2 == 0 ) 
      { 
        n = n + 2;
      }
      else
      {
        n = n + 1;
      }      
    });    
  }

  void mudaI() {
    // mudança para par:
    setState(() {
      if (n % 2 == 0 ) 
      { 
        n = n + 1;
      }
      else
      {
        n = n + 2;
      }      
    });    
  }

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
	body: Center(
	  child: Column(
	    children: [
	      Text('Número Atual: $n', style: const TextStyle(fontSize: 26),),
	      ElevatedButton(onPressed: mudaP, child: const Text('Próximo Par')),
        ElevatedButton(onPressed: mudaI, child: const Text('Próximo Impar')),
	    ],
	  ),
	),
      ),
    );
  }
}