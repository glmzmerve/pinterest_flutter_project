import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text('Oluştur Sayfası'),
       
      ),
      body:  Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           
            children: [ const Text(
              'Pin oluşturun',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              
            ),
           const Divider (color: Colors.black, height: 20, thickness: 5),
            IconButton(onPressed: () => {}, icon: Icon(Icons.add_a_photo),color: Colors.black,),
            IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_forward),color: Colors.black,),

            ],
            
        
             
              
            ),
        ],
      ),
      
      );
    
  }
}