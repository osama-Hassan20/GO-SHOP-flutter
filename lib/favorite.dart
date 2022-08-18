import 'package:flutter/material.dart';

import 'details.dart';
import 'home.dart';
import 'wishlist1.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Favorite(),
    );
  }
}


class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _MyProfileState();
}

class _MyProfileState extends State<Favorite> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width-40)/3;
  late double high= (MediaQuery.of(context).size.height-150)/3;

  //Color ? myColor  =  Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,

        leading:
        InkWell(
          onTap:(){
            setState(() {
              Navigator.pop(context);
            //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
            });
          } ,
          child: Icon(Icons.arrow_back, color: Colors.white,),
        ),

        title: Text("Wislist",),
        centerTitle: true,
        actions: [
          InkWell(
          onTap:(){ setState(() {
            //Navigator.pop(context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
          });} ,
      child: Icon(Icons.home, color: Colors.white,),
    ),
    ],


      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 40,
            //color: Colors.cyan,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    child:

                    Text("May your wishes come true",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                left: 20,top: 10,),
                Positioned(
                  child:InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserList()));
                      });},
                    child:Icon(Icons.calendar_view_day,color: Colors.purple,) ,
                  )

                  ,
                  right: 50,top: 10,),
                Positioned(
                  child:
                  InkWell(
                    onTap: (){},
                    child:Icon(Icons.dashboard,color: Colors.orange,) ,
                    ),
                  right: 20,top: 10,)

              ],
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                height: 200,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2019/11/04/19/30/in-full-growth-4601953__340.jpg" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,
                                  
                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),
              Container(
                height: 150,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: screen,
                      child: InkWell(
                        child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg" ,
                          width: screen, height: 200,  fit: BoxFit.cover,),
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Detailes()));
                          });
                        },

                      ),
                    ),


                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),


            ],

          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                height: 160,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2016/04/08/10/42/a-neckerchief-1315916__340.jpg" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),
              Container(
                height: 200,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2017/08/07/15/59/woman-2605197__340.jpg" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),


            ],

          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                height: 200,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2016/03/23/08/34/woman-1274361__340.jpg" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),
              Container(
                height: 150,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2019/01/25/11/18/girl-3954232__340.jpg" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),


            ],

          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                height: 150,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2016/11/14/03/02/woman-1822454__340.jpg" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),
              Container(
                height: 200,
                width: screen-15,
                child:
                Stack(
                  children: [
                    Image.network("https://images.pexels.com/photos/11048285/pexels-photo-11048285.jpeg?auto=compress&cs=tinysrgb&w=600" ,
                      width: screen, height: 200,  fit: BoxFit.fill,),

                    Positioned(
                      top: 0,
                      left:10 ,



                      child:Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color: Colors.purple ),

                        //color: Colors.yellow,
                        width: 45,
                        height: 15,

                        child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                        ) ,
                      ),



                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container (
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ),

                        //color: Colors.yellow,
                        child:
                        Icon(Icons.favorite_border,color: Colors.black,),
                      ),



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
                                height: 33,

                                color: Colors.cyanAccent,
                                width:90 ,
                                child: Padding(padding:EdgeInsetsDirectional.all(10),
                                  child: Text("type of brand",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 10 ),),

                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),color: Colors.purple,),
                                  height: 33,

                                  //color: Colors.purple,
                                  width:30 ,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.shopping_bag,color: Colors.white,size: 12,),
                                      Text("15,55",style: TextStyle(color: Colors.white,fontSize: 8),)
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
              SizedBox(width: 10,),


            ],

          ),

        ],
      ),






    );
  }}