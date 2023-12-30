import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
        child: Column()
      ),
    );
  }
}
