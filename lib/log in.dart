
import 'package:flutter/material.dart';

import 'home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Log_In(),
    );
  }
}


class Log_In extends StatefulWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  State<Log_In> createState() => _MyProfileState();
}

class _MyProfileState extends State<Log_In> {

  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home()));
    }
  }



  Color ? myColor  =  Colors.grey[10];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:Text("Log in",style: TextStyle(color: Colors.black)) ,

      )
      ,
      body: ListView(



        //crossAxisAlignment: CrossAxisAlignment.center,




        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 50,),




          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(100) ,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green,
                child: Image.network("https://freesvg.org/img/abstract-user-flat-4.png",fit: BoxFit.cover,),
              ),
            ),
          ),

          const SizedBox(height: 20,),

            Padding(padding: const EdgeInsets.all(25),

              child:  TextField(
                controller: username_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(60))
                    ),
                    labelText: "name",
                    hintText: "Enter name",
                    suffixIcon: Icon(Icons.mail,color: Colors.black,)


                ),

              )
          ),
          //const SizedBox(height: 0,),


           Padding(padding: const EdgeInsets.all(25),

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

                      String username = username_controller.text;
                      String password = password_controller.text;
                      if (username != '' && password != '') {
                        print('Successfull');
                        print('user name is:$username');
                        logindata.setBool('login', false);
                        logindata.setString('username', username);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    });

                  },
                  child:

                  Text("Log in " , style: TextStyle (color: Colors.black),)



              )
          ),


        ],

      ),

    );
  }
}