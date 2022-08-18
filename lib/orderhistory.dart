//import 'package:applacation1/Cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Cart.dart';

void main() {
  runApp(MyNewApp());
}

class   MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Orderhistory(),
    );
  }
}

class Orderhistory extends StatefulWidget {
  const Orderhistory({Key? key}) : super(key: key);

  @override
  State<Orderhistory> createState() => _UserListState();
}
class _UserListState extends State<Orderhistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
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
        Text("Order hestory"),
        actions: [
          InkWell(
            child: Icon(Icons.shopping_bag,),
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
          SizedBox(height: 20,),
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
                            Text("10 aug 2020"),
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
                        child:InkWell(
                          child: Icon(Icons.share,color: Colors.orangeAccent,),
                          onTap: (){},
                        ) ,
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
                        child:InkWell(
                          child: Icon(Icons.share,color: Colors.orangeAccent,),
                          onTap: (){},
                        ) ,
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
                        child:InkWell(
                          child: Icon(Icons.share,color: Colors.orangeAccent,),
                          onTap: (){},
                        ) ,
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
                        child:InkWell(
                          child: Icon(Icons.share,color: Colors.orangeAccent,),
                          onTap: (){},
                        ) ,
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
                        child:InkWell(
                          child: Icon(Icons.share,color: Colors.orangeAccent,),
                          onTap: (){},
                        ) ,
                      ))

                ],
              ),

            ),

          ),

        ],
      ),);
  }
}