import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Cart.dart';
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
      home: EdetCard(),
    );
  }
}


class EdetCard extends StatefulWidget {
  const EdetCard({Key? key}) : super(key: key);

  @override
  State<EdetCard> createState() => _MyProfileState();
}

class _MyProfileState extends State<EdetCard> {
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

  String ? cardname;
  String ? cardnum;
  String ? exdate;
  String ? cvv;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    carddata = await SharedPreferences.getInstance();

    setState(() {
      cardname = carddata.getString('cardname');
      cardnum = carddata.getString('cardnum');
      exdate = carddata.getString('exdate');
      cvv = carddata.getString('cvv');

    });}






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.purple,

            leading: InkWell(
              child: Icon(Icons.arrow_back,),
              onTap: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            title:Text("Edit card"),
            centerTitle: true,
            actions: [
              InkWell(
                child: Icon(Icons.home,),
                onTap: (){
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                  });
                },
              )
            ],



          ),
          preferredSize: Size.fromHeight(60),
        ),

        body: ListView(
          children: [


            SizedBox(height: 20,),


            Container(
              margin: EdgeInsets.all(10),
              width: wid-20,
            //  alignment: Alignment.center,
              height: 130,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.purple,),
              child: Stack(
                children: [
                Container(
                width: wid-20,
                height: 130,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.purple,),),

                  Positioned(
                      top: 0,
                      left: 0,
                      child:  Container(
                    width: wid *2.5,
                    height: 130,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft:Radius.circular(40),topLeft:Radius.circular(10) ),color: Colors.brown,),)),
                  Positioned(
                      top: 10,
                      right: 10,
                      child:  Text("visa",style: TextStyle(fontSize: 14),)),
                  Positioned(
                      top: 40,
                      right: 40,
                      child:  Container(
                        alignment: Alignment.center,
                        child: Text("$cardnum ",style: TextStyle(fontSize: 22),),
                      )),
                  Positioned(
                      bottom: 30,
                      left: 30,
                      child:  Text("Card holder",style: TextStyle(fontSize: 10),)),
                  Positioned(
                      bottom: 10,
                      left: 30,
                      child:  Text("$cardname",style: TextStyle(fontSize: 14),)),
                  Positioned(
                      bottom: 30,
                      right: 10,
                      child:  Text("Expiry",style: TextStyle(fontSize: 10),)),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child:  Text("$exdate",style: TextStyle(fontSize: 14),)),


                ],
              ),

            ),
            SizedBox(height: 20,),


            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: cardname_controller,
                decoration: InputDecoration(
                  labelText: "Name on card",
                  hintText: "$cardname",
                ),

              ),

            ),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: cardnum_controller,
                decoration: InputDecoration(
                  labelText: "Card number",
                  hintText: "$cardnum",
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
                        hintText: "$exdate",
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
                       hintText: "$cvv",
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
                        if (  cardname!= ''  && cardnum != '' && exdate != '' && cvv != '') {

                          //adressdata.setString('call', call);
                          carddata.setString('cardname', cardname);
                          carddata.setString('cardnum', cardnum );
                          carddata.setString('exdate', exdate);
                          carddata.setString('cvv', cvv);
                          //  adressdata.setString('country', country);
                          print("$cardnum");
                          //Navigator.pop(context);
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => Profilee()));
                        }

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
                          Navigator.pop(context);
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