//import 'package:applacation1/color%20piker2.dart';
import 'package:flutter/material.dart';
import 'log in.dart';

class tirdscrean extends StatelessWidget {
  const tirdscrean({Key? key}) : super(key: key);

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
                  child:Image.asset("images/mm3.png" , height: 300,  fit: BoxFit.fill


                  ),
                )
            ),
            Container(
              padding: EdgeInsets.all(20),
              child:
              Text("we strive to have a positive impactto ,customars, emloyee,small bussiness thr encomee an comunity",style: TextStyle(color: Colors.white,fontSize: 20),),

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
                      Text("log in",style: TextStyle(color: Colors.orange,),),
                      color: Colors.deepPurple,

                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_In()
                        ),);


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
                      Text("Registar",style: TextStyle(color: Colors.orange,),),
                      color: Colors.deepPurple,

                      onPressed: (){
                        Navigator.pop(context);
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
