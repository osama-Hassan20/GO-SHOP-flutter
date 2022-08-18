import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'favorite.dart';

void main() {
  runApp(MyNewApp());
}

class   MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: UserList(),
    );
  }
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}
class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,),
        centerTitle: true,
        title:
        Text("Wishlist"),
        actions: [
          Icon(Icons.shopping_bag,color: Colors.white,)
        ],
      ),



      body: ListView(

        children: [
          Container(
            height: 60,
            //color: Colors.cyan,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  child:

                  Text("May your wishes come true",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
                  left: 20,top: 10,),
                Positioned(
                  child:InkWell(
                    onTap: (){},
                    child:Icon(Icons.calendar_view_day,color: Colors.orangeAccent,size: 29,) ,
                  )

                  ,
                  right: 50,top: 10,),
                Positioned(
                  child:
                  InkWell(
                    onTap: (){setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Favorite()));
                    });},
                    child:Icon(Icons.dashboard,color: Colors.purple,) ,
                  ),
                  right: 20,top: 10,)

              ],
            ),
          ),
          Container(
      margin: EdgeInsets.all( 10 ),
        width: MediaQuery.of(context).size.width,
        height: 150,
      child:Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
       ),
      child: Stack(

        children: [
          Container(
            width: MediaQuery.of(context).size.width-20,
            height: 150,
          ),
          Positioned(
            top: 0,
            left: 0,
            child:
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              width: 100,

                  child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                  )



            ),

          ),),
          Positioned(
            left: 110,
              child: Container(
                padding: EdgeInsets.only(top: 30,left: 10),
            width: MediaQuery.of(context).size.width * 0.6,
            height: 150,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

              SizedBox(height: 5,),
                 Text("American Trends",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
               SizedBox(height: 5,),
                  Row(
            children: [
             Icon(Icons.star,color: Colors.orange,size: 13,),
             Icon(Icons.star,color: Colors.orange,size: 13,),
              Icon(Icons.star,color: Colors.orange,size: 13,),
               Icon(Icons.star,color: Colors.orange,size: 13,),
                Icon(Icons.star_half,color: Colors.orange,size: 13,),
                 Text("+23",style: TextStyle(fontSize: 10)),
    ],

    ),
              ],
            ),
          )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
            width: 60,
            height: 30,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20)),color: Colors.purple),
            child:Icon(Icons.favorite,color: Colors.orangeAccent,) ,
          ))

        ],
      ),

      ),

          ),
          Container(
            margin: EdgeInsets.all( 10 ),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child:Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-20,
                    height: 150,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 150,
                          width: 100,

                          child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                          )



                      ),

                    ),),
                  Positioned(
                      left: 110,
                      child: Container(
                        padding: EdgeInsets.only(top: 30,left: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 150,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

                            SizedBox(height: 5,),
                            Text("American Trends",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                Text("+23",style: TextStyle(fontSize: 10)),
                              ],

                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),color: Colors.purple),
                        child:Icon(Icons.favorite,color: Colors.orangeAccent,) ,
                      ))

                ],
              ),

            ),

          ),
          Container(
            margin: EdgeInsets.all( 10 ),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child:Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-20,
                    height: 150,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 150,
                          width: 100,

                          child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                          )



                      ),

                    ),),
                  Positioned(
                      left: 110,
                      child: Container(
                        padding: EdgeInsets.only(top: 30,left: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 150,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

                            SizedBox(height: 5,),
                            Text("American Trends",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                Text("+23",style: TextStyle(fontSize: 10)),
                              ],

                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),color: Colors.purple),
                        child:Icon(Icons.favorite,color: Colors.orangeAccent,) ,
                      ))

                ],
              ),

            ),

          ),
          Container(
            margin: EdgeInsets.all( 10 ),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child:Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-20,
                    height: 150,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 150,
                          width: 100,

                          child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                          )



                      ),

                    ),),
                  Positioned(
                      left: 110,
                      child: Container(
                        padding: EdgeInsets.only(top: 30,left: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 150,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

                            SizedBox(height: 5,),
                            Text("American Trends",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                Text("+23",style: TextStyle(fontSize: 10)),
                              ],

                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),color: Colors.purple),
                        child:Icon(Icons.favorite,color: Colors.orangeAccent,) ,
                      ))

                ],
              ),

            ),

          ),
          Container(
            margin: EdgeInsets.all( 10 ),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child:Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-20,
                    height: 150,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 150,
                          width: 100,

                          child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                          )



                      ),

                    ),),
                  Positioned(
                      left: 110,
                      child: Container(
                        padding: EdgeInsets.only(top: 30,left: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 150,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

                            SizedBox(height: 5,),
                            Text("American Trends",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                Text("+23",style: TextStyle(fontSize: 10)),
                              ],

                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),color: Colors.purple),
                        child:Icon(Icons.favorite,color: Colors.orangeAccent,) ,
                      ))

                ],
              ),

            ),

          ),
          Container(
            margin: EdgeInsets.all( 10 ),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child:Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(

                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-20,
                    height: 150,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 150,
                          width: 100,

                          child: Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                          )



                      ),

                    ),),
                  Positioned(
                      left: 110,
                      child: Container(
                        padding: EdgeInsets.only(top: 30,left: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 150,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

                            SizedBox(height: 5,),
                            Text("American Trends",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star,color: Colors.orange,size: 13,),
                                Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                Text("+23",style: TextStyle(fontSize: 10)),
                              ],

                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),color: Colors.purple),
                        child:Icon(Icons.favorite,color: Colors.orangeAccent,) ,
                      ))

                ],
              ),

            ),

          ),

        ],
      ),);
  }
}