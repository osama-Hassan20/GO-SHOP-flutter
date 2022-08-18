import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'payments.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CheckOut(),
    );
  }
}


class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _MyProfileState();
}

class _MyProfileState extends State<CheckOut> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width-30)/3;
  late double high= (MediaQuery.of(context).size.height-150)/3;
  Color ? myColor = Colors.white;
  Color ? itColor  =  Colors.orangeAccent;
  Color ? tColor  =  Colors.black;


  late SharedPreferences adressdata;
  final street1_controller = TextEditingController();
  final street2_controller = TextEditingController();
  final City_controller = TextEditingController();
  final State_controller = TextEditingController();
  final Country_controller = TextEditingController();
@override
void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }
void init()async{
  adressdata = await SharedPreferences.getInstance();

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
              Icon(Icons.home,color: Colors.white,)
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
                            left: 0,
                          ),
                          Positioned(
                              left: 130,
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
                                width: 15,
                                height: 15,

                              )),
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
            Container(
              margin: EdgeInsets.only(top: 30,bottom:30 ),
              padding: EdgeInsets.only(left: 10,right:20),
              child: Row(
                children: [
                  InkWell(child:Icon(Icons.gpp_good_rounded,color: tColor,),
                  onTap: (){setState(() {
                    tColor = Colors.orangeAccent;
                    String street1 = street1_controller.text;
                    String street2 = street2_controller.text;
                    String city = City_controller.text;
                    String country = Country_controller.text;
                    String State = State_controller.text;
                  if (street1 != '' && street2 != '' && city != '' && country != '' && State != '') {

                    adressdata.setString('street1', street1);
                    adressdata.setString('street2', street2);
                    adressdata.setString('city', city);
                    adressdata.setString('country', country);
                    adressdata.setString('State', State);
                    print("sucesssssssss");
                  }

                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()),);
                  });}
                  ),

                  SizedBox(width: 20,),
                  Text("Billing adress is the same as delevry adress",style: TextStyle(fontSize: 11),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: street1_controller,
                decoration: InputDecoration(
                  labelText: "street1",
                  hintText: "Enter street1",
                ),

              ),

            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: street2_controller,
                decoration: InputDecoration(
                  labelText: "street2",
                  hintText: "Enter street2",
                ),

              ),

            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: City_controller,
                decoration: InputDecoration(
                  labelText: "City",
                  hintText: "Enter City",
                ),

              ),

            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: State_controller,
                    decoration: InputDecoration(
                      labelText: "State",
                      hintText: "Enter State",
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: Country_controller,
                    decoration: InputDecoration(
                      labelText: "Country",
                      hintText: "Enter Country",
                    ),
                  ),
                ),





              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 45,
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
                  width: 90,
                  height: 45,
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
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Payments()),);
                        });
                      }
                  ),

                ),
                ],
            )

          ],









        ));}}