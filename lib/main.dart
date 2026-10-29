import'package:flutter/material.dart';
import'package:get/get.dart';
import 'package:tour_guide/chat.dart';

void main(){
    runApp(const MyApp());
}  

class MyApp extends StatefulWidget {
     const MyApp({super.key});

     @override
     State<MyApp> createState() => _MyAppState();
     }

class _MyAppState extends State<MyApp>{
    bool showPassward=true;

final passwordController = TextEditingController();

List<String> students = [
"Angry Birds",
"Um E Habiba",
"Sneha",
"Eman Fatima",
"Iman Fatima",
"Rabia Islam",
]; 

@override
Widget build(BuildContext context) {
return GetMaterialApp(
home:Scaffold(
appBar: AppBar(
title: const Text("Whatsapp"),
backgroundColor:
Colors.greenAccent, 
),
  body:
    Column(
      children:[
        Padding(
         padding: const EdgeInsets.all(6.0),
         child: TextField(
          decoration:InputDecoration(
             prefixIcon: Icon(Icons.search),
             hintText:'Search Here',
             border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(100.0)
             )
          )
        ),
        ),
        TextButton(onPressed: (){}, child: Text("unread")),
        Expanded(
       child: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return  Column(
            children:[
              ListTile(
                onTap:(){
                  print(index);
                    Get.to(ChatHistory(name: students[index], n:index ));
                },
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
          title: Text(students[index]),
          subtitle: Text("hello how are you?"),
          trailing:Column(
            children:[
             Text("10:00 am"),
             CircleAvatar(
              radius: 10,
              backgroundColor:Colors.green,
              child :Text(
                '1',
                 style:TextStyle(
                  color: Colors.white,
                 fontSize:12,
                        ),),
                      ),
                   ],
                  ),
                 ),
                 Divider(
                  height:1,
                  thickness:0.5,
                  color: Colors.grey,
                 )
                 ],
                );  //Column
               },
            ),
           ),
          ],
    ),
      
       floatingActionButton:FloatingActionButton(onPressed: (){}, child:Icon(Icons.chat),),
        ),
     );
  }
}