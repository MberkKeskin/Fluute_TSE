import 'package:flutter/material.dart';

class forgetUser extends StatefulWidget {
  const forgetUser({super.key});

  @override
  State<forgetUser> createState() => _forgetUserState();
}

class _forgetUserState extends State<forgetUser> {
  final Namecontrol=GlobalKey<FormState>();
  final surnameControlle=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forget Password Page',style: TextStyle(color: Colors.white,fontSize: 20),),backgroundColor: Colors.red,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(key: Namecontrol,
            child:TextFormField(
              decoration: InputDecoration(
                border:  OutlineInputBorder(),
                hintText: 'Enter Your name',
                labelText: 'Name',
           
              ),
              validator: (value) {
                if(value!.isEmpty){
                  return 'Name can not be blank';
                }
              },
            ) ,
            ),
            
            SizedBox(
              height: 5,
            ),

            Form(
              key: surnameControlle,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Surname',
                  hintText: 'Enter your surname',
                  border: OutlineInputBorder(),
              
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Surname can not be blank';
                  }
                },
              ) ,
              ),
              ElevatedButton(onPressed: (){
                if(Namecontrol.currentState!.validate()&& surnameControlle.currentState!.validate()){
                        Navigator.pop(context);
                }
              }, child: Text('Send Password'))
        ],),
    );
  }
}