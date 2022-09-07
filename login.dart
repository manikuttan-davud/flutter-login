

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/home.dart';

class screenLogin extends StatefulWidget {
 screenLogin({super.key});

  @override
  State<screenLogin> createState() => _screenLoginState();
}

class _screenLoginState extends State<screenLogin> {
  final _textController1=TextEditingController();

final   _textController2=TextEditingController();
final  _formKey=GlobalKey<FormState>();
bool _isDataMatched=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
      ),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  controller: _textController1,
                  decoration:const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'username',
                    
                  ),
                  validator: (value){
                 // if(_isDataMatched){
                   // return null;
                  //}
                  //else{
                    //return 'Error';
                  //}
                   if(value==null||value.isEmpty){
                     return 'value is empty';
                  }
                  else{
                    return null;
                  }
                },
                ),
              ),
              TextFormField(
              controller: _textController2,
                obscureText:true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
                validator: (value){
                 // if(_isDataMatched){
                  //  return null;
                  //}
                  //else{
                   // return 'Error';
                  //}
                  if(value==null||value.isEmpty){
                     return 'value is empty';
                  }
                  else{
                    return null;
                  }
                },
          
              ),
             const  SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: !_isDataMatched,
                    child: Text('Username Password doesnot match',style: TextStyle(color: Colors.red),)),
                  ElevatedButton.icon(
                    onPressed: (){
                      if( _formKey.currentState!.validate()){
                        checkLogin(context);
                      }
                      else{
                            print('Data is Empty');
                      }
                     
                    
                    }, 
                  icon:const Icon(Icons.check), 
                  label: const Text('Login')),
          
                ],
              )
            ],),
          ),
        ),
      )
    );
  }

  void checkLogin(BuildContext cxt){
    // ignore: no_leading_underscores_for_local_identifiers
    final _username=_textController1.text;
    // ignore: no_leading_underscores_for_local_identifiers
    final _password=_textController2.text;
     if(_username == _password){
    print('username and password  match');
    Navigator.of(cxt).pushReplacement(MaterialPageRoute(builder: ((ctx1) =>  homeScreen())));
    }
    else{
    
     print('username and password doesnot match');
    }
     // final _errorMessage ='username and password does not match';
     //snackbar
      //ScaffoldMessenger.of(cxt).showSnackBar(SnackBar(
       // behavior: SnackBarBehavior.floating,
      //  backgroundColor: Colors.red,
      ////  margin: EdgeInsets.all(35),
       // content:Text(_errorMessage) )
      //);
    //alert
    //showDialog(context: cxt, builder: (ctx1){
     // return AlertDialog(title: const Text('Error'),
     // content: Text(_errorMessage),
     // actions: [
     //   TextButton(onPressed: (){
       // Navigator.of(ctx1).pop();
      //  },
    //    child: const Text('close'))
     // ],
     // );
    
      
   // }
  //  );
    //   setState(() {  
    //  _isDataMatched=false;
    //  });
    
  }
}
