import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox(width: 0,),
        leadingWidth: 20,
        titleSpacing: 0,
        title:RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Home',
                style: TextStyle(
                  color:Color(0xff38B4BC),
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                )
              ),
              TextSpan(
                  text: 'bhase',
                  style: TextStyle(
                      color:Color(0xffF4A817),
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  )
              )
            ]
          ),
        )
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 40,),
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Looking',
                      style: TextStyle(
                          color:Color(0xff38B4BC),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sora',
                          fontSize: 32
                      )
                  ),
                  TextSpan(
                      text: ' for an',
                      style: TextStyle(
                          color:Color(0xffF4A817),
                          fontFamily: 'sora',
                          fontSize: 32,
                          fontWeight: FontWeight.w700
                      )
                  )
                ]
            ),
          ),
          Text('Elegant house this is the place',
          style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 32
      ),),
          SizedBox(height: 25,),
            Text('Welcome friends, are you looking for us? \nCongratulations you have found us',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 16
              ),),
            SizedBox(height:25,),
            InkWell(
              onTap: (){
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(color: Color(0xff38B4BC,),
                borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Next',style: TextStyle(color: Colors.white),),
                    SizedBox(width: 6,),
                   ColorFiltered(
                       colorFilter: ColorFilter.mode(Colors.white,
                       BlendMode.srcATop),
                       child: Image.asset('assets/images/arrow.png',height: 30,
                       ))
                  ],
                ),
              ),
            ),
            Expanded(child:
            Image.asset('assets/images/onb_home.jpg'))
        ],),
      ),
    );
  }
}
