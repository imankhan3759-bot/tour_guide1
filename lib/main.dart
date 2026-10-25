import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text("BS IT"),
        centerTitle: true,
      ),
      body:Container(
        width:double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
gradient:LinearGradient(colors: [
  Colors.redAccent, Colors.amber
]
)
        ),
        child:Padding (
          padding: const EdgeInsets.all(24.0),
          child:Column(
          children:[
         Text('Welcome Back' ,
         style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40,
         ),
         ),
         SizedBox(
          height:20,
         ),
        
         TextField(
          obscureText: true,
          decoration: InputDecoration(
          border:OutlineInputBorder(),
          prefixIcon:Icon(Icons.password),
          filled:true,
          fillColor: Colors.white,
          hintText: "Enter your Password"
          ),
         ),
TextField(
 decoration: InputDecoration(
border: OutlineInputBorder(),
prefixIcon: Icon(Icons.email),
filled: true,
fillColor:Colors.white,
hintText: "Enter your Email"
          )
         ),

         SizedBox(
          height:20,
         ),
         ElevatedButton(onPressed: (){}, child: Text('Login'))
          ],
      ),
    ),
  ),
    ),
    );
  }
}

