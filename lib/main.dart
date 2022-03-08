import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConfirmBooking(),
    );
  }
}

class ConfirmBooking extends StatelessWidget {

String pickUplocation="Liaquatabad NO 1";
String dropLocation="Paf-Keit NNAZ";
String date="12/10/20";
String day="SUN";
String period ="am"; //SUN ,SAT,MON,etc
String time="09:30 ";
// am or pm
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text(
                            "confirm your Booking:",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Color(0xffa2a2a2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                              Container(
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff8c8c8c),
                                ),
                                padding:EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                                child: Text('Talha Iqbal',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                            SizedBox(height: 10,),
                            InfoTitle(title: "PickUp Location:",info: pickUplocation,),
                            InfoTitle(title: "Drop Location:",info: dropLocation,),
                            InfoTitle(title: "Time:",info: time,),
                            InfoTitle(title: "Date:",info: date,),

                          ],),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(text: "Cancel",color: Colors.black,onTap: (){},),
                      Button(text: "Confirm",color: Colors.black,onTap: (){},),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTitle extends StatelessWidget {
  InfoTitle({this.title,this.info});
 final title;
 final info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal: 20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(title,style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 8,),
        Text(info,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.white),),
          SizedBox(height: 15,),

        ],) ,);
  }
}

class Button extends StatelessWidget {
 Button({this.text,this.color,this.onTap});
final text;
final color;
final onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 110,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:color
        ),
        child:Text(text,style: TextStyle(color: Colors.white,fontSize: 18),) ,),
    );
  }
}
