import 'package:flutter/material.dart';
void main() {
  runApp(MyNewApp());
}

class   MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Detailes(),
    );
  }
}


class Detailes extends StatefulWidget {
  const Detailes({Key? key}) : super(key: key);

  @override
  State<Detailes> createState() => _MyProfileState();
}

class _MyProfileState extends State<Detailes> {
  late double screen= MediaQuery.of(context).size.width/2;
  late double wid= (MediaQuery.of(context).size.width);
  late double heigh= (MediaQuery.of(context).size.height)/2;
  late double wid3= (MediaQuery.of(context).size.width)/3;

  //Color ? myColor  =  Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(width: wid,height: 20,),

          Container(
            width: wid,
            height: heigh,
            child: Stack(
              children: [
                Image.network("https://watanimg.elwatannews.com/image_archive/original_lower_quality/17997766091614160562.jpg",
                  width: wid,height: heigh,fit: BoxFit.cover,),
                Positioned(child: InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.pop(context);
                      //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                    });
                    //Icon(Icons.favorite,color: Colors.black,);
                  },
                  child: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                top: 30,
                  left: 25,
                ),
                Positioned(child: InkWell(
                  onTap: (){},
                  child: Icon(Icons.favorite_border,color: Colors.black,),
                ),
                  top: 30,
                  right: 25,
                ),

                Positioned(child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),

                  child:Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    width: 60,
                    height: 20,

                    child: Text("15%OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                    ) ,
                  ),

                ),
                  bottom: 30,
                  right:20 ,
                ),
              ],
            ),
          ),
          Container(


              child: Stack(
                children: [
                  Container(
                    width: wid,
                    height: heigh-20,
                    color: Colors.white,
                    padding: EdgeInsets.only(left:10,top: 10 ),
                    //   alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Padding(padding: EdgeInsets.only(top: 30 ),
                        child: Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),),

                        SizedBox(height: 5,),
                        Text("American Trends",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.orange,size: 13,),
                            Icon(Icons.star,color: Colors.orange,size: 13,),
                            Icon(Icons.star,color: Colors.orange,size: 13,),
                            Icon(Icons.star,color: Colors.orange,size: 13,),
                            Icon(Icons.star_half,color: Colors.orange,size: 13,),
                          ],

                        ),
                        SizedBox(height: 8,),
                        Text("wearing this scarf in cold fall winter would be good wearing this scarf in cold fall winter would be goodwearing this scarf in cold fall winter would be good",style: TextStyle(fontSize: 10)),
                        SizedBox(height: 5,),
                        Text("Matirial &Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                        SizedBox(height: 5,),
                        Text("Soft Cashmere Soft Cashmere Soft Cashmere Soft Cashmere Soft Cashmere Soft Cashmere",style: TextStyle(fontSize: 10,)),
                        SizedBox(height: 15,),




                      ],
                    ),
                  ),
                  Positioned(child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Container(

                        width: wid/2,
                        height: 40,
                        color:Colors.purple ,
                        padding: EdgeInsets.all(10),
                        child:Row(
                          children: [
                            Text("15.99  ",style: TextStyle(color: Colors.white,fontSize: 12),),
                            SizedBox(height: 20,width: 1,child: Container(color: Colors.white,),),
                            SizedBox(width: 4,),
                            Icon(Icons.shopping_bag,color: Colors.orange,),
                            InkWell(
                              onTap: (){},
                              child: Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 12)),
                            )

                          ],
                        ) ,

                      ),
                    ),

                    bottom: 30,
                    left: wid/4,
                  )


                ],
              ),
            )

        ],
      ),










    );}}