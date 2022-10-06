import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen  extends StatelessWidget {


  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
      final   heroes =['Vegueta','Krilin','Bulma','Trons','Vegueta','Krilin','Bulma','Trons','Vegueta','Krilin','Bulma','Trons'];

    return Scaffold(
       body: Column(
         children: [
           Stack(
             children: [
               _HeaderWidget(),
               Column(
                 children: [
                  SizedBox(height: 50,),
                   Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       
                      CircleAvatar(
                        backgroundColor:Color.fromARGB(255, 207, 210, 218),
                        maxRadius: 50,
                      ),
                      Column(
                        children: [

                      Text('Pokedex',style: TextStyle(color: Color.fromARGB(255, 228, 139, 38),fontSize: 30),),
                      Text('Pokemon',style: TextStyle(color: Color.fromARGB(255, 207, 207, 219),fontSize: 30),),
                      Text('Pikachu',style: TextStyle(color: Color.fromARGB(255, 18, 146, 46),fontSize: 30),),
                        ],
                      )
                    ],
                   ),
                 ],
               )
              
             ],
           ),
           Expanded(
             child: SingleChildScrollView(
              child: Column(
                children: [ 
                   
                 
                ],
              ),
             ),
           )
           
            
         ],
       ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     height: 250,
     decoration: BoxDecoration(
       color: Color.fromARGB(255, 71, 27, 172),
       borderRadius: BorderRadius.only(bottomLeft:Radius.circular(80),bottomRight: Radius.circular(80))
     ),
    );
  }
}