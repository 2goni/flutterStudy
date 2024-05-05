import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('widget 상하 배치'),
            backgroundColor: Colors.amber,
          ),
          body: Body(),
        ),
      ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,

      // child: Column( //컨테이너 상하 쌓기
      //   mainAxisAlignment: MainAxisAlignment.center, //Column 위젯의 상하 정렬 방법
      //   crossAxisAlignment: CrossAxisAlignment.center, //Column 위젯의 좌우 정렬 방법
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Center(child: Text('container 1')),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Center(child: Text('container 2')),
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Center(child: Text('container 3')),
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Center(child: Text('container 4')),
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Center(child: Text('container 5')),
      //       color: Colors.blue,
      //     ),
      //   ]
      // ),

      // child: Row( //컨테이너 좌우 쌓기
      //   mainAxisAlignment: MainAxisAlignment.center, //Row 위젯의 좌우 정렬 방법
      //   crossAxisAlignment: CrossAxisAlignment.center, //Row 위젯의 상하 정렬 방법
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Text('container 1'),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Text('container 2'),
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: Text('container 3'),
      //       color: Colors.yellow,
      //     ),
      //     // Container(
      //     //   width: 100,
      //     //   height: 50,
      //     //   child: Center(child: Text('container 4')),
      //     //   color: Colors.green,
      //     // ),
      //     // Container(
      //     //   width: 100,
      //     //   height: 50,
      //     //   child: Center(child: Text('container 5')),
      //     //   color: Colors.blue,
      //     // ),
      //   ]
      // ),

      // child: Column( //컨테이너 상하 좌우 쌓기
      //   mainAxisAlignment: MainAxisAlignment.center, //Column 위젯의 상하 정렬 방법
      //   crossAxisAlignment: CrossAxisAlignment.center, //Column 위젯의 좌우 정렬 방법
      //   children:[
      //     Row(             mainAxisAlignment: MainAxisAlignment.center, //Row 위젯의 좌우 정렬 방법
      //       crossAxisAlignment: CrossAxisAlignment.center, //Row 위젯의 상하 정렬 방법
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 50,
      //           child: Text('container 1'),
      //           color: Colors.red,
      //         ),
      //         Container(
      //           width: 100,
      //           height: 50,
      //           child: Text('container 2'),
      //           color: Colors.orange,
      //         ),
      //         Container(
      //           width: 100,
      //           height: 50,
      //           child: Text('container 3'),
      //           color: Colors.yellow,
      //         ),
      //       ]
      //     ),
      //   Container(
      //     width: 300,
      //     height: 50,
      //     color: Colors.deepPurple,
      //     child: Text('container 4'),
      //   )]
      // ),
      
      child: SingleChildScrollView( //컨테이너 스크롤
        
        // child: Column( //컨테이너 상하 스크롤
        //   children: [
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //     Container(
        //       color: Colors.lightGreen,
        //       width: double.infinity,
        //       height: 100,
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //     ),
        //   ],
        // ),

        scrollDirection: Axis.horizontal,//컨테이너 좌우 스크롤
        child: Row(
          children: [
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Container(
              color: Colors.lightGreen,
              height: double.infinity,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
          ],
        ),
      ),
    );
  }
}
