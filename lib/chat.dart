import 'package:flutter/material.dart';

class ChatHistory extends StatelessWidget {
 ChatHistory ({super.key, required this.name, required this.n});

 final String name;
 final int n;
 List<String> send=[
  'hi', 'how are you', 'i am fine',  'what are you upto','ok','nothing',
 ];

 @override
 Widget build (BuildContext context) {
    return MaterialApp (
      home:Scaffold(
    appBar: AppBar(title: Text(name),),
    body: Column(
      children:[
        Expanded(
           child: ListView.builder(
              itemCount:send.length,
              itemBuilder: (context, index){
                 bool isMe = index % 2 == 0;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: isMe ? Alignment.centerLeft : Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      color: Colors.greenAccent,
                      child: Column(
                        children:[
                           Text(send[index]),
                        ],
                      ),
                    ),
                   )
                  );
                 }
               ),
             ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child:TextField(
                  decoration: InputDecoration(
                     border: OutlineInputBorder()
                  ),
                 ),
               ),
           ],
          ),// Container
      ), // Scaffold
    );
}
}