

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'checkouta.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Cart(),
    );
  }
}


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _MyProfileState();
}

class _MyProfileState extends State<Cart> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= MediaQuery.of(context).size.width;
  late double high= (MediaQuery.of(context).size.height-150)/3;


  /*late SharedPreferences logindata;
  String? username;
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
    });
  }*/

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
        title: Text("Cart",),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_bag,color: Colors.orangeAccent,)
        ],


      ),

      body:Column(

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

            padding: EdgeInsets.all(10),
            width: wid,
            height: 60,
            child: Row(children: [
              Text("Products:1",style: TextStyle(fontSize: 15),),
              SizedBox(width: 17,),
              Text("Subtotal:360",style: TextStyle(fontSize: 15),),
              SizedBox(width: 22,),
              Text("Taxes:6",style: TextStyle(fontSize: 15),),








            ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: _CartList(),
            ),
          ),






          SizedBox(height: 30,child: InkWell(
            child:
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Buying not supported yet.')));
              },
              style: TextButton.styleFrom(primary: Colors.orangeAccent),
              child: const Text('check out'),
            ),
          ),),],





      ),





















    );}}
class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return ListView(
      children: [
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
                    width: MediaQuery.of(context).size.width * 0.4,
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
                    width: 80,
                    height: 30,
                    //padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),color: Colors.purple),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child:Padding(padding: EdgeInsets.only(bottom: 25),
                            child: Icon(Icons.minimize,color: Colors.orangeAccent),),
                          onTap: (){},
                        ),
                        SizedBox(height: 20,width: 2,child: Container(color: Colors.white,),),
                        InkWell(
                          child:Padding(padding: EdgeInsets.only(bottom: 0),
                            child: Icon(Icons.add,color: Colors.orangeAccent),),
                          onTap: (){},
                        ),



                      ],
                    ) ,
                  )),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.purple),
                      child: InkWell(
                          child: Icon(Icons.close,color: Colors.orangeAccent,),
                          onTap: (){}
                      )
                  ))

            ],
          ),

        ),

      ),],
      /*ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {
            cartProvider.decrementItemFromCartProvider(index);
          },
        ),
        title: Text(
          cartProvider.flutterCart.cartItem[index].productName.toString(),
          style: itemNameStyle,
        ),
      ),*/
    );
  }
}



/*
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'checkouta.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Cart(),
    );
  }
}


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _MyProfileState();
}

class _MyProfileState extends State<Cart> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= MediaQuery.of(context).size.width;
  late double high= (MediaQuery.of(context).size.height-150)/3;


  /*late SharedPreferences logindata;
  String? username;
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
    });
  }*/

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
            title: Text("Cart",),
             centerTitle: true,
             actions: [
              Icon(Icons.shopping_bag,color: Colors.orangeAccent,)
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

          padding: EdgeInsets.all(10),
          width: wid,
          height: 60,
          child: Row(children: [
            Text("Products:1",style: TextStyle(fontSize: 15),),
            SizedBox(width: 17,),
            Text("Subtotal:360",style: TextStyle(fontSize: 15),),
            SizedBox(width: 22,),
            Text("Taxes:6",style: TextStyle(fontSize: 15),),








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
                      width: 80,
                      height: 30,
                      //padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),color: Colors.purple),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                       // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            child:Padding(padding: EdgeInsets.only(bottom: 25),
                              child: Icon(Icons.minimize,color: Colors.orangeAccent),),
                          onTap: (){},
                          ),
                          SizedBox(height: 20,width: 2,child: Container(color: Colors.white,),),
                          InkWell(
                            child:Padding(padding: EdgeInsets.only(bottom: 0),
                              child: Icon(Icons.add,color: Colors.orangeAccent),),
                            onTap: (){},
                          ),



                        ],
                      ) ,
                    )),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.purple),
                  child: Icon(Icons.close,color: Colors.orangeAccent,),
                ))

              ],
            ),

          ),

        ),

           Container(
             alignment:Alignment.center ,
            padding: EdgeInsets.all(10),
            width: wid,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft:Radius.circular(100),
                topLeft:Radius.circular(20),
                topRight:Radius.circular(20) ),color: Colors.purple,),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.question_answer_outlined,color: Colors.orangeAccent,size: 25,),
                SizedBox(width: 10,),
                InkWell(child: Text("Check out",style: TextStyle(fontSize: 18,color: Colors.white),),
                    onTap: (){
                      setState(() {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>CheckOut ()),);
                      });
                    }
                )
              ],
            )

          ),],





    ),





















    );}}*/