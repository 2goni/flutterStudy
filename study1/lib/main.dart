import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //가장 기본이 되는 위젯의 최상단
    home: Scaffold(
      //도화지 위젯
      appBar: AppBar(
        title: Text('Study to Container!'),
        backgroundColor: Colors.blue,
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 100,
        //color: Colors.blue, //BoxDecoration 쓸때 직접 color 못씀
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color:  Colors.amber, width: 3, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10)
          ]
        ),

        child: Center(child: Container(child: Text('Hello Container'))),
      ),
    );
  }
}
