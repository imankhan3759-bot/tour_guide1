import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp ({super.key});

  @override
  State<MyApp> createState() => _MyAppState ();
    
  }
  class _MyAppState extends State<MyApp>{
    final TextEditingController emailController =TextEditingController();
    final TextEditingController passwordController=TextEditingController();
     bool showPassword = false;
    int number=1;

    @override
    void initState(){
      super.initState();

      print('Hello to flutter BS IT');
    }

    @override
    void dispose(){
      super.dispose();
    }
  
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
          controller: emailController,
          decoration: InputDecoration(
          border:OutlineInputBorder(),
          prefixIcon:Icon(Icons.email),
          hintText: 'Enter Email',
           ),
          ),
    
TextField(
  controller: passwordController,
  obscureText: showPassword,
  decoration: InputDecoration(
    border:OutlineInputBorder(),
    prefixIcon: Icon(Icons.password),
    suffixIcon:IconButton(onPressed: (){
setState(() {
  showPassword=!showPassword;
});
    },
     icon: Icon(Icons.remove_red_eye)),
  

          ),
         ),
         SizedBox(height:20),
         ElevatedButton(onPressed: (){
          print(emailController.text);
          print(passwordController.text);
         }, child: Text('Login') 
         ),

Text('12'),
         ElevatedButton(
          onPressed: (){
            setState(() {
              
              number++;
            });
         }, 
         child: Text( 'Increment')
         )
          ],
      ),
    ),
  ),
    ),
    );
  }
}

