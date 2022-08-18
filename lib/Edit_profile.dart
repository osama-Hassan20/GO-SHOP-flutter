import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Profile.dart';
void main() {
  runApp(MyNewApp());
}

class   MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: EditProfile(),
    );
  }
}


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<EditProfile> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width);
  late double heigh= (MediaQuery.of(context).size.height)/2;
  late double wid3= (MediaQuery.of(context).size.width)/3;



  late SharedPreferences logindata;
  late SharedPreferences adressdata;
  final call_controller = TextEditingController();
  final username_controller = TextEditingController();
  final email_controller = TextEditingController();
  final street1_controller = TextEditingController();
  final City_controller = TextEditingController();
  String? street1;
  String? city;
  String? username;
  String? email;
  //String? call ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    adressdata = await SharedPreferences.getInstance();

    setState(() {

      username = logindata.getString('username');
      email = logindata.getString("email");
      street1 = adressdata.getString("street1");
      //street2 = adressdata.getString("street2");
      city = adressdata.getString("city");
      //call = adressdata.getString('call');

      print("username is:$username");
    });
  }




  //Color ? myColor  =  Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,

        leading:
        InkWell(
          onTap:(){setState(() {
            Navigator.pop(context);
          });} ,
          child: Icon(Icons.arrow_back, color: Colors.white,),
        ),

        title: Text("Editprofile",),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.only(top: 20,right: 15),
          child: InkWell(
              onTap:(){
                setState(() {
                  Navigator.pop(context);
                });
              } ,
              child: Text("Cancel",style: TextStyle(fontSize: 13,color: Colors.orangeAccent),)
          ),
          )
        ],


      ),
      body: ListView(
        children: [
          Column(

            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      //padding: EdgeInsets.only(left:wid3 ),
                      alignment: Alignment.center,
                      height: 160,
                      width: 160,
                      //color: Colors.green,
                      child: Image.network("https://cdn.pixabay.com/photo/2018/03/24/21/55/horse-3258001__340.jpg",
                        fit: BoxFit.cover,height: 160,width: 160,),
                    ),
                  ),
                  Positioned(
                    child: InkWell(
                      onTap: (){},
                      child: Icon(Icons.add_a_photo,color: Colors.white,size: 30,),

                    ),
                    bottom: 15,
                    right: 20,
                  )
                ],
              ),
//
              Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 5),
                child:Container(
                  width: wid,
                  height: 60,
                  //color: Colors.cyan,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.orangeAccent),
                        child: Icon(Icons.person_pin,color: Colors.purple,),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-110,
                        height: 60,
                        alignment: Alignment.center,
                        child: TextField(
                          controller: username_controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                    topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(0))
                            ),
                            hintText: "$username",

                          ),

                        ),
                      )



                    ],
                  ),

                ), ),
              Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                child:Container(
                  width: wid,
                  height: 60,
                  //color: Colors.cyan,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.orangeAccent),
                        child: Icon(Icons.mail,color: Colors.purple,),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-110,
                        height: 60,
                        alignment: Alignment.center,
                        child: TextField(
                          controller: email_controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                    topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(0))
                            ),
                            hintText: "$email",

                          ),

                        ),
                      )



                    ],
                  ),

                ), ),
              Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                child:Container(
                  width: wid,
                  height: 60,
                  //color: Colors.cyan,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.orangeAccent),
                        child: Icon(Icons.home,color: Colors.purple,),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-110,
                        height: 60,
                        alignment: Alignment.center,
                        child: TextField(
                          controller: City_controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                    topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(0))
                            ),
                            hintText: "$city",

                          ),

                        ),
                      )



                    ],
                  ),

                ), ),
              Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
                child:Container(
                  width: wid,
                  height: 60,
                  //color: Colors.cyan,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.orangeAccent),
                        child: Icon(Icons.place,color: Colors.purple,),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-110,
                        height: 60,
                        alignment: Alignment.center,
                        child: TextField(
                          controller: street1_controller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0))
                              ),
                              hintText: "$street1"

                          ),

                        ),
                      )



                    ],
                  ),

                ), ),
              SizedBox(height: 70,),

              Container(
                height: 50,
                width: wid,
                margin: EdgeInsets.only(top: 55),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orangeAccent),
                alignment: Alignment.center,
                // color: Colors.orangeAccent,
                child: InkWell(
                  onTap: (){
                   setState(() {


                     String username = username_controller.text;
                     String email = email_controller.text;
                     String city = City_controller.text;
                     String street1= street1_controller.text;


                     if ( username != ''  && email != '' && city != '' && street1 != '') {

                       //adressdata.setString('call', call);
                       adressdata.setString('city', city);
                       adressdata.setString('street1', street1);
                       logindata.setString('username', username);
                       logindata.setString('email', email);
                     //  adressdata.setString('country', country);
                       print("$email");
                       //Navigator.pop(context);
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Profilee()));
                     }
                     else{print("errorrrrrrrrrrrrrrrrr");}
                   }
                   );
                  },
                  child: Text("Save",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),




              /*
 Padding(padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                    Container(
                    color: Colors.orangeAccent,
                    width: 30,
                    height: 30,
                    child: Icon(Icons.person_outline,color: Colors.purple,),),

                      TextField(
                        decoration: InputDecoration(


                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.all(Radius.circular(60))
                          ),
                          hintText: "user name",
                        ),

                      ),
                    ],


                  )),
          ),*/








            ],





          ),
        ],
      )




































    );}}