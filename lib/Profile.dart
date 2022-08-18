//import 'package:applacation1/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Cart.dart';
import 'Edetcard.dart';
import 'Edit_profile.dart';
import 'favorite.dart';
import 'home.dart';
import 'orderhistory.dart';
void main() {
  runApp(MyNewApp());
}
class   MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Profilee(),
    );
  }
}


class Profilee extends StatefulWidget {
  const Profilee({Key? key}) : super(key: key);

  @override
  State<Profilee> createState() => _MyProfileState();
}

class _MyProfileState extends State<Profilee> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width);
  late double heigh= (MediaQuery.of(context).size.height);
  late double wid3= (MediaQuery.of(context).size.width)/3;


  late SharedPreferences logindata;

  String? username;
  String? email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();

    setState(() {
      username = logindata.getString('username');
      email = logindata.getString("email");


      print("username is:$username");
    });
  }


  //Color ? myColor  =  Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: InkWell(
          child: Icon(Icons.arrow_back,),
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        centerTitle: true,
        title:
        Text("Profile"),
        actions: [
          InkWell(
            child: Icon(Icons.shopping_bag,),
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              });
            },
          ),
        ],
        elevation: 0,

      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //margin: EdgeInsets.all(0),
            width: wid ,
            height: heigh *0.3,
            color: Colors.purple,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(


                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    color: Colors.blue,

                    height: 120,
                    width: 120,
                    child: Image.network("https://cdn.pixabay.com/photo/2018/03/24/21/55/horse-3258001__340.jpg",
                      fit: BoxFit.cover,height: 120,width: 120,),

                  ),

                ),
                Text("$username",style: TextStyle(fontSize: 22,),),
                Text("$email",style: TextStyle(color: Colors.orangeAccent,fontSize: 16))

              ],
            ),
          ),


          Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 5),
            child:Container(
              width: wid,
              height: 60,
              //color: Colors.cyan,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                        bottomLeft:Radius.circular(20) ),color: Colors.purple),
                    child:
                    Icon(Icons.edit_note_outlined,color: Colors.orangeAccent,size: 34,),

                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                      });

                    },
                    child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 20),),
                  )



                ],
              ),

            ), ),
          Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
            child:Container(
              width: wid,
              height: 60,
              //color: Colors.cyan,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.purple),
                    child: Icon(Icons.card_travel_outlined,color: Colors.orangeAccent,),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                      });},
                    child: Text("Cart",style: TextStyle(color: Colors.white,fontSize: 20),),
                  )



                ],
              ),

            ), ),
          Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
            child:Container(
              width: wid,
              height: 60,
              //color: Colors.cyan,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.purple),
                    child: Icon(Icons.favorite,color: Colors.orangeAccent,),
                  ),
                  InkWell(
                    onTap: (){  setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
                    });},
                    child: Text("Wishlist",style: TextStyle(color: Colors.white,fontSize: 20),),
                  )



                ],
              ),

            ), ),
          Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
            child:Container(
              width: wid,
              height: 60,
              //color: Colors.cyan,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.purple),
                    child: Icon(Icons.list_alt_outlined,color: Colors.orangeAccent,),
                  ),
                  InkWell(
                    onTap: (){setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Orderhistory()));
                    });},
                    child: Text("Order History",style: TextStyle(color: Colors.white,fontSize: 20),),
                  )



                ],
              ),

            ), ),
          Padding(padding: EdgeInsets.only(top: 5,left: 25,right: 25,bottom: 5),
            child:Container(
              width: wid,
              height: 60,
              //color: Colors.cyan,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),bottomLeft:Radius.circular(20) ),color: Colors.purple),
                    child: Icon(Icons.credit_card,color: Colors.orangeAccent,),
                  ),
                  InkWell(//EdetCard
                    onTap: (){setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EdetCard()));
    });},
                    child: Text("Card",style: TextStyle(color: Colors.white,fontSize: 20),),
                  )



                ],
              ),

            ), ),












        ],





      ),
































    );}}