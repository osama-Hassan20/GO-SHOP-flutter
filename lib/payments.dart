import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Summary.dart';
import 'checkouta.dart';
import 'home.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Payments(),
    );
  }
}


class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _MyProfileState();
}

class _MyProfileState extends State<Payments> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width-30)/3;
  late double high= (MediaQuery.of(context).size.height-150)/3;
  Color ? myColor = Colors.white;
  Color ? itColor  =  Colors.orangeAccent;
  Color ? tColor  =  Colors.black;



  final cardname_controller = TextEditingController();
  final cardnum_controller = TextEditingController();
  final Exdate_controller = TextEditingController();
  final cvv_controller = TextEditingController();
  late SharedPreferences carddata;
  //late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    carddata = await SharedPreferences.getInstance();
    //newuser = (logindata.getBool('login') ?? true);

    }







    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.purple,

            leading: Icon(Icons.menu,color: Colors.white,),
            title:Text("check out"),
            centerTitle: true,
            actions: [
              InkWell(
                child: Icon(Icons.home,),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  });
                },
              ),
            ],



          ),
          preferredSize: Size.fromHeight(40),
        ),

        body: ListView(
          children: [

            Container(
              color: Colors.purple,
              height: 80,
              // margin: EdgeInsets.only(top: -1),
              padding: EdgeInsets.only(left: 30,right: 30),

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Stack(

                    children: [
                      Divider( color:  Colors.white, thickness: 2,),
                      Positioned(
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
                            width: 15,
                            height: 15,

                          )),
                      Positioned(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
                              width: 15,
                              height: 15,

                            ),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orangeAccent,),
                              width: 12,
                              height: 12,

                            ),

                          ],
                        ),
                        left: 130,
                      ),
                      Positioned(
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
                            width: 15,
                            height: 15,

                          ))
                    ],),
                  Row(
                    children: [
                      Text("Adress"),
                      SizedBox(width: 55,),
                      Text("Payments"),
                      SizedBox(width: 53,),
                      Text("Summary"),
                    ],
                  )



                ],),
            ),
            SizedBox(height: 40,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: cardname_controller,
                decoration: InputDecoration(
                  labelText: "Name on card",
                  hintText: "Enter Name",
                ),

              ),

            ),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: cardnum_controller,
                decoration: InputDecoration(
                  labelText: "Card number",
                  hintText: "Enter Card number",
                ),

              ),

            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: Exdate_controller,
                    decoration: InputDecoration(
                      labelText: "Expiry date",
                    //  hintText: "Enter State",
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: cvv_controller,
                    decoration: InputDecoration(
                      labelText: "CVV",
                     // hintText: "Enter Country",
                    ),
                  ),
                ),





              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 30,bottom:30 ),
              padding: EdgeInsets.only(left: 10,right:20),
              child: Row(
                children: [
                  InkWell(child:Icon(Icons.gpp_good_rounded,color: tColor,),
                      onTap: (){setState(() {
                        tColor = Colors.orangeAccent;
                        String cardname = cardname_controller.text;
                        String cardnum = cardnum_controller.text;
                        String exdate = Exdate_controller.text;
                        String cvv = cvv_controller.text;
                        if (cardname != '' && cardnum != '' && exdate != '' && cvv != '') {
                          print('Successfull');
                          carddata.setString('cardname', cardname);
                          carddata.setString('cardnum', cardnum);
                          carddata.setString('exdate', exdate);
                          carddata.setString('cvv', cvv);
                        }
                        else{print("hay error is here");}

                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()),);
                      });}
                  ),

                  SizedBox(width: 20,),
                  Text("Save this card details",style: TextStyle(fontSize: 11),)
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 50,
                  margin: EdgeInsets.only(top: 60),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: myColor,),

                  alignment: Alignment.center,
                  child:InkWell(
                      child:
                      Text("Back",style: TextStyle(color: itColor,),),
                      //color: mycolor,

                      onTap: (){
                        setState(() {
                          myColor = Colors.orangeAccent;
                          itColor = Colors.white;
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CheckOut ()),);
                        });
                      }
                  ),

                ),
                SizedBox(width: 50,),
                Container(
                  width: 80,
                  height: 50,
                  margin: EdgeInsets.only(top: 60),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: myColor,),

                  alignment: Alignment.center,
                  child:InkWell(
                      child:
                      Text("Next",style: TextStyle(color: itColor,),),
                      //color: mycolor,

                      onTap: (){
                        setState(() {
                          myColor = Colors.orangeAccent;
                          itColor = Colors.white;
                          //  print("next");
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Summary()),);
                        });
                      }
                  ),

                ),
              ],
            )

          ],









        ));}}