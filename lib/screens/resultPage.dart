// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmicalculator/contents/bottomButton.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/contents/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String interputation;
  final String result;
  final String recomendation;

  const ResultPage(
      {required this.result,
      required this.interputation,
      required this.recomendation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('የሰውነት ብዛት መረጃ ጠቋሚ'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'የእርስዎ ውጤት',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    interputation,
                    style: kRsultTextStyle,
                  ),
                  Text(
                    result,
                    style: kBMITextStyle,
                  ),
                  Text(
                    recomendation,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            lable: 'እንደገና አስላ',
            onTap: (() {
              Navigator.pop(context);
            }),
          ),
        ],
      ),
    );
  }
}
