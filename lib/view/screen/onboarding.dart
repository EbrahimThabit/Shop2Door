import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
             Column(
               children:[
                 Expanded(
                  flex: 2,
                 child: PageView.builder(
                    itemCount: onBoardingList.length,
                    itemBuilder: (context, i) => Column(
                          children: [
                            Text(
                              onBoardingList[i].title!,
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Image.asset(onBoardingList[i].image!),
                            SizedBox(
                              height: 80,
                            ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child:  Text(
                              onBoardingList[i].body!,
                              style: TextStyle(
                                color: AppColor.grey,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold, fontSize: 17,height: 2),
                                textAlign: TextAlign.center,
                                
                                
                            
                            ),
                          )
                          ],
                        )),
               ),
             ])));
  }
}
