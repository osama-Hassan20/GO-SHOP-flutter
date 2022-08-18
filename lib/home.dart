import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Cart.dart';
import 'Profile.dart';
import 'checkouta.dart';
import 'details.dart';
import 'favorite.dart';
import 'orderhistory.dart';
import 'sighn up.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyProfileState();
}

class _MyProfileState extends State<Home> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width-30)/3;
  late double high= (MediaQuery.of(context).size.height-150)/3;


  late SharedPreferences logindata;
  late SharedPreferences login;
  String? username;
  String? email;
  bool? user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    login = await SharedPreferences.getInstance();

    setState(() {
      username = logindata.getString('username');
      email = logindata.getString("email");
      user = login.getBool("login");

      print("username is:$username");
    });
  }

  //Color ? myColor  =  Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(

          child: Icon(Icons.menu,color: Colors.white,),
          onTap: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profilee()));
            });
          },
        ),
        title: Text("Home",),
        centerTitle: true,
        actions: [
          InkWell(

            child: Icon(Icons.shopping_bag,color: Colors.white,),
            onTap: (){
              setState(() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Cart()));
              });
            },
          ),
        ],


      ),

      body: ListView(


        children: [

          Padding(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            child:
            Container(
              height: 50,
              child:
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(60))
                    ),
                    // labelText: "Name",
                    hintText: "search",
                    prefixIcon: Icon(Icons.search,color: Colors.black,)


                ),

              ),
            )
            ,




    ),
          Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child:

              Stack(
                children: [
                  Positioned(


                    child: Text("Category",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    left: 20,
                    top: 20,
                  ),

                  Positioned(


                    child: InkWell(
                      onTap: (){},
                      child: Text("see all(9)",style: TextStyle(color: Colors.black,fontSize: 10),),
                    ),
                    right: 8,
                    top: 20,
                  ),
                ],

              )
          ),

         // SizedBox(height: 5,)
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 175,
            child:
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [


              //  SizedBox(width:5 ,),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:BorderRadius.circular(30) ,
                        child: Image.network("https://images.pexels.com/photos/11048285/pexels-photo-11048285.jpeg?auto=compress&cs=tinysrgb&w=600"
                          //"trait-of-a-muslim-young-woman-wearing-a-head-scarf-indoor.jpg?fj=1"
                            ,width: wid,height: 195,fit: BoxFit.fill),

                    ),
                    Positioned(
                      child:
                      Text("Fashion",style: TextStyle(fontSize: 19   ,color: Colors.white,),textAlign: TextAlign.center,),
                      right: 23,
                      bottom: 80,
                    ),
                  ],

                ),
                SizedBox(width:5 ,),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:BorderRadius.circular(30) ,
                      child: Image.network("https://cdn.pixabay.com/photo/2017/04/06/11/24/fashion-2208045__340.jpg",
                        width: wid,height: 195,fit: BoxFit.fill,),

                    ),
                    Positioned(
                      child:
                      Text("Accesories",style: TextStyle(fontSize: 15   ,color: Colors.white,),textAlign: TextAlign.center,),
                      right: 20,
                      bottom: 80,
                    ),
                  ],

                ),
                SizedBox(width:5,),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:BorderRadius.circular(30) ,
                      child: Image.network("https://cdn.pixabay.com/photo/2022/07/31/19/56/girl-7356696__340.jpg",
                        width: wid,height: 195,fit: BoxFit.fill),

                    ),Positioned(
                      child:
                      Text("Home Office",style: TextStyle(fontSize: 14   ,color: Colors.white,),textAlign: TextAlign.center,),
                      right: 15,
                      bottom: 80,
                    ),
                  ],

                ),

              ],





            ),



          ),
          //SizedBox(height: 10,),


              Stack(   children:  [
              Container(
              width: MediaQuery.of(context).size.width,
                   child:Image.network("https://cairosales.com/15483-large_default/casio-edifice-analog-silver-dial-men-s-watch-efr-106d-1avudf.jpg" ,width: 100, height: 100,  fit: BoxFit.fill,),
              ),

                Positioned(

                  child:

                  //
                  Text("70%Sale",style: TextStyle(fontSize: 30   ,color: Colors.white,),textAlign: TextAlign.center,),
                  right: 145,
                  top: 20,
                  bottom: 20,
                ),
                              ]
                             ),
          SizedBox(height: 5,),

           Container(
          color: Colors.white,
              width: MediaQuery.of(context).size.width,
             height: 40,
              child:

              Stack(
           children: [
              Positioned(


              child: Text("popular",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
              left: 20,
           top: 20,
              ),],),),

          SizedBox(height: 15,),


          Row(
            children: [
              Container(
                height: 200,
                width: screen-10,
                child: 
                Stack(
                  children: [

                    Container(
                      height: 200,
                      width: screen-10,
                      child: InkWell(
                        child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg" ,
                          width: screen-10, height: 200,  fit: BoxFit.cover,),
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Detailes()));
                          });
                        },

                      ),
                    ),




                    Positioned(child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),

                      child:Container(
                        color: Colors.purple,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                      ) ,
                    ),

                    ),
                      top: 0,
                      left:7 ,
                    ),
                    Positioned(child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),

                          child:Container (

                            //color: Colors.yellow,
                            child:
                            Icon(Icons.favorite_border,color: Colors.black,),
                          ),
                        ),
                      top: 5,
                      right: 5,

                    ),
                    Positioned(
                      bottom: 0,
                      left: 5,
                      right: 5,
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),

                          child:
                          Row(
                            
                            children:[
                              Container(
                                height: 40,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                    height: 40,
                                    color: Colors.purple,
                                    width:60 ,
                                    child: 
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 12),)
                                    ],
                                  )

                              )
  ]
                          ),

                        ),





                    ),
                  ],
                ),
                
              ),
              SizedBox(width: 5,),
              Container(
                height: 200,
                width: screen-10,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2019/11/04/19/30/in-full-growth-4601953__340.jpg"
                      ,width: screen-10, height: 200,  fit: BoxFit.fill,),

                    Positioned(child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),

                      child:Container(
                        color: Colors.purple,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),

                    ),
                      top: 0,
                      left:10 ,
                    ),
                    Positioned(child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),

                      child:Container (

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),
                    ),
                      top: 5,
                      right: 5,

                    ),
                    Positioned(
                      bottom: 0,
                      left: 5,
                      right: 5,
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),

                        child:
                        Row(

                            children:[
                              Container(
                                height: 40,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  height: 40,
                                  color: Colors.purple,
                                  width:60 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 12),)
                                    ],
                                  )

                              )
                            ]
                        ),

                      ),





                    ),
                  ],
                ),

              ),
              
              
            ],

          ),

        ],



      ),
      drawer: Drawer(
        backgroundColor: Colors.purple,

        child: Column(
          children: [
            Container(
              width: (MediaQuery.of(context).size.width)/2,
              child: DrawerHeader(decoration:BoxDecoration(),
                child: Column(
                    children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network("https://cdn.pixabay.com/photo/2018/03/24/21/55/horse-3258001__340.jpg",
                  width: 70,height: 70,fit: BoxFit.cover,),

              ),
                  Text("$username",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)  ,
                      Text("$email",style: TextStyle( color: Colors.deepOrange,fontSize: 8,),)  ,

                    ],
            )
              )


              ),
            ListTile(
              leading: InkWell(

                child: Icon(Icons.home,color: Colors.orange,),
                onTap: (){
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                  });
                },
              ),
              title: Text("Home",style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: InkWell(
                child: Icon(Icons.favorite,color: Colors.orange,),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
                  });
                },
              ),
              title: Text("Wishlist",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: InkWell(
                child: Icon(Icons.shopping_bag,color: Colors.orange,),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                  });
                },
              ),
              title: Text("Cart",style: TextStyle(color: Colors.white),),
              onTap: (){

              },
            ),
            ListTile(
              leading: InkWell(
                child: Icon(Icons.padding,color: Colors.orange,),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Orderhistory()));
                  });
                },
              ),
              title: Text("Order hestory",style: TextStyle(color: Colors.white),),



            ),
            ListTile(
              leading: InkWell(
                child: Icon(Icons.person,color: Colors.orange,),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profilee()));
                  });
                },
              ),
              title: Text("Profile",style: TextStyle(color: Colors.white),),

            ),

            ListTile(
              leading: Icon(Icons.check_box,color: Colors.orange,),
              title: Text("Check Out",style: TextStyle(color: Colors.white),),
              onTap: (){setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
              });

              },

            ),

              ListTile(
              leading: Icon(Icons.logout,color: Colors.orange,),
              title: Text("Logout",style: TextStyle(color: Colors.white),),
              onTap: (){
                setState(() {
                  login.setBool('login', true);
                  logindata.setBool('login', true);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sighn_Up()));

                });


              },

            ),






          ],
    ),

      ),


    );
  }}