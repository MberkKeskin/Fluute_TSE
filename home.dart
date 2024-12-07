import 'package:flutter/material.dart';
import 'package:flutter_application_11/new_User.dart';
import 'package:flutter_application_11/forget_user.dart';

class Ekran extends StatefulWidget {
  const Ekran({super.key});

  @override
  State<Ekran> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Ekran> {
  final passwordControl=GlobalKey<FormState>();
  final nameControl=GlobalKey<FormState>();

  String name='';
  String password='';
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      
  
    body: SafeArea( child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        Image(image: NetworkImage('https://seeklogo.com/images/T/TSE-logo-6770CA9F80-seeklogo.com.png'),),
        Container(
          child: Form(key:nameControl,
          
          child: TextFormField(
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your name ',
              labelText: 'Name',
           
            ),

            validator: (value){
              if(value!.isEmpty){  //bununla  value==null arasında ki farkı sor. value! zaten null değil demek değil mi?
                return 'Name be not blank';
              }
            },
           /* onSaved: (value){
             name=value!;
            },*/
          )),
        ),
        SizedBox(
          height: 5,
        ),
       
        Container(
          child: Form(key: passwordControl,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Please enter your password',
              
            ),
            
            validator: (value) {
              if(value!.isEmpty ){
                return 'Password not be blank';
              }else if( value.length<8){
                return 'Password lenght at least 8 charhcter';
              }else{
              }

            },
            /*onSaved: (newValue) {
              password=newValue!;
            },*/
          )
          ),
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const forgetUser()));
            }, child: Text('Forget Password'),),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const newUser()));
            }, child: Text('New User'),),
          ],
          ),
          ElevatedButton(onPressed: (){
            if(nameControl.currentState!.validate()  &&  passwordControl.currentState!.validate()){
             
              
            }
            
          }, child: Text('Login'),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey)),)
      ],
    )
    ),
    );
  }
}


