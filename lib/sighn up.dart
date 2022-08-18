

//import 'package:applacation1/three_pages.dart';
import 'package:flutter/material.dart';
import 'package:project5/three_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'log in.dart';


void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Sighn_Up(),
    );
  }
}


class Sighn_Up extends StatefulWidget {
  const Sighn_Up({Key? key}) : super(key: key);

  @override
  State<Sighn_Up> createState() => _MyProfileState();
}

class _MyProfileState extends State<Sighn_Up> {
  Color ? myColor  =  Colors.grey[10];



  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  final email_controller = TextEditingController();
  late SharedPreferences  logindata;
  late SharedPreferences  login;
  late bool newuser;
  late bool user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    login = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    user = (login.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home()));
    }
  }






  @override
  Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: Colors.white,
        appBar:
        AppBar(
          leading:InkWell(
            onTap: (){
              //Navigator.pop(context);
            },
          child:

          Container(
            height: 50,
            width: 50,
            child: Icon(Icons.arrow_back,color: Colors.black,),
          ),),

          elevation: 0,
          backgroundColor: Colors.white,
            title:Text("Sighn Up",style: TextStyle(color: Colors.black)) ,

        )
        ,
        body:ListView(



          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Padding(padding: const EdgeInsets.all(25),

                child:  TextField(
                  controller: username_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(60))
                    ),

                    labelText: "Name",
                    hintText: "Enter your name",
                    suffixIcon: Icon(Icons.person,color: Colors.black,)


                  ),

                )
            ),

            Padding(padding: const EdgeInsets.all(25),
            
            child:  TextField(
              controller: email_controller,
                decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(60))
                ),
                  labelText: "email",
                  hintText: "Enter email",
                  suffixIcon: Icon(Icons.mail,color: Colors.black,)


      ),

      )
            ),
            //const SizedBox(height: 0,),


             Padding(padding: EdgeInsets.all(25),

                child:  TextField(
                  controller: password_controller,
                  decoration: InputDecoration(


                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(60))
                    ),
                      labelText: "Password",
                      hintText: "Enter password",
                      suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),
                  ),

                )
            ),
            Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                child:    ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(myColor)
                    ),

                    onPressed: (){
                      setState((){
                        myColor = Colors.greenAccent ;
                      });

                    }, child:

                    InkWell(
                      child: Text("Sign up " , style: TextStyle (color: Colors.black),),
                      onTap: (){
                        setState(() {
                          String username = username_controller.text;
                          String password = password_controller.text;
                          String email = email_controller.text;
                          if (username != '' && password != '' && email != '') {
                            print('Successfull');
                           // print('user name is:$username');
                            //logindata.setBool('login', false);
                            logindata.setString('username', username);
                            logindata.setString('email', email);
                            logindata.setBool('login', false);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Pages()));
                          }
                        });
                      },
                    )

                  )
            ),
            SizedBox(height: 20,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Alrady a user?" ,style: TextStyle(color: Colors.black),),
                      InkWell(
                        child: Text("log in",style: TextStyle(color: Colors.blue),),
                        onTap: (){
                          setState(() {
                            //logindata.setBool('login', true);
                           //  bool sighn = logindata.getBool("login");
                            if(user==true){
                              login.setBool('login', false);


                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Log_In()));}


                          });
                        },
                      )
                        //child: Text("log in",style: TextStyle(color: Colors.blue),),





                    ],

                  ),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.center,
                        child: Icon(Icons.facebook,color: Colors.blue,),
                      )





                ],
              ),)






          ],






















        ),

    );
  }
}