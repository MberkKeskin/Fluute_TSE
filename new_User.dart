import 'package:flutter/material.dart';

class newUser extends StatefulWidget {
  const newUser({super.key});

  @override
  State<newUser> createState() => _newUserState();
}

class _newUserState extends State<newUser> {
  final namerControl=GlobalKey<FormState>();
  final SurnameControl=GlobalKey<FormState>();
  final ageControl=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New User Register'),centerTitle: true,titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),backgroundColor: Colors.red,
      ),
      
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: namerControl,
            
            child: TextFormField(
                 decoration: InputDecoration(
                  labelText: 'Name ',
                  hintText: 'Enter your Name',
                  border: OutlineInputBorder(),
              
                 ),
                 
                 validator: (value) {
                   if(value!.isEmpty){
                    return 'Name can not be empty';
                   }
                 },
          ),
          ),
          
          SizedBox(
            height: 5,
          ),
          
          Form(
            key: SurnameControl,
            child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Surname',
              hintText: 'Enter your Surname',
              border: OutlineInputBorder(),
          
            ),
            
            validator: (value) {
              if(value!.isEmpty){
                return 'Surname can not be empty';
              }
            },
          ),
  
          ),

          SizedBox(
            height: 5,
          ),
          
          Form(
            key: ageControl,
            child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Age',
              hintText: 'Enter Your Age',
              border: OutlineInputBorder(),
         
            ),
           
            validator: (value) {
              if(value!.isEmpty){
                return 'age is not be empty';
              }
            },
           
          ),
          ),
         
          ElevatedButton(onPressed: (){
            if(namerControl.currentState!.validate() && SurnameControl.currentState!.validate() && ageControl.currentState!.validate()){
                    Navigator.pop(context);
          }
          }, child: Text('Register'))
        ],
      ),
      );
  }
}