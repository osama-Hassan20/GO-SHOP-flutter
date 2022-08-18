import 'package:flutter/material.dart';
import 'thirdscrean.dart';

class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);

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
                height: 450,

                child:ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Image.asset("images/FS2.png" ,
                      height: 100,width: 100,  fit: BoxFit.fill


                  ),
                )
            ),
            Container(
              padding: EdgeInsets.all(20),
              child:
              Text("\"We proote the fact that we offer free shipinng for all orders\"",style: TextStyle(color: Colors.white,fontSize: 20),),

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
                      Text("back",style: TextStyle(color: Colors.orange,),),
                      color: Colors.deepPurple,

                      onPressed: (){
                        Navigator.pop(context);

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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>tirdscrean()
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
