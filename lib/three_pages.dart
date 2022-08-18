
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'secondscreen.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Pages(),
    );
  }
}


class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _MyProfileState();
}
//late SharedPreferences logindata;
class _MyProfileState extends State<Pages> {
  //Color ? myColor  =  Colors.deepPurple;


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
    newuser = (logindata.getBool('next') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home()));
    }
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepPurple,
     body:Column(

       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Container(
           //decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),

           padding: EdgeInsets.all(30),
          //width: 300,


           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height *0.6,

           child:ClipRRect(
               borderRadius: BorderRadius.circular(20),
                   child:Image.asset("images/gs1.png" , height: 150,width: MediaQuery.of(context).size.width*0.3,  fit: BoxFit.fill


           ),
           )
         ),
         Container(
           padding: EdgeInsets.all(20),
           child:
           Text(" we strive to have a positive impactto ,customars, emloyee,small bussiness thr encomee an comunity",style: TextStyle(color: Colors.white,fontSize: 20),),

         ),
         Container(
           alignment: Alignment.bottomCenter,
          // padding: EdgeInsets.symmetric(vertical: 40),

           color: Colors.deepPurple,

           width:MediaQuery
               .of(context)
               .size
               .width,
           height: 100,
           child:
           Row(

             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,

             children: [
                 Container(

                   color: Colors.deepPurple,
                   alignment: Alignment.center,
                   child:RaisedButton(


                     child:
                     Text("Skip",style: TextStyle(color: Colors.orange,),),
                     color: Colors.deepPurple,

                     onPressed: (){

                     },
                   ),

                 ),
               SizedBox(width: 25,),
               SizedBox(width: 3,height: 30,child: Container(color: Colors.white,),),
               SizedBox(width: 25,),
               Container(
                 color: Colors.deepPurple,
                 alignment: Alignment.center,
                 child:RaisedButton(


                   child:
                   Text("Next",style: TextStyle(color: Colors.orange,),),
                   color: Colors.deepPurple,

                   onPressed: (){
                     logindata.setBool('next', false);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()
                     ),);
                   },
                 ),

               ),


             ],


           ),
         )







       ],


 )























    );
  }
}