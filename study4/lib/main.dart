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
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Count : $value',
          style: const TextStyle(fontSize: 30),
        ),
        TestButton(addCounter),
      ],
    );
  }
  void addCounter(int num){
    setState(() => value += num);
  }
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback,{super.key});
  // final VoidCallback callback; //파라 미터 없는 콜백
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: InkWell( //InkWell | GestureDetector
          onTap: ()=> callback.call(1),
          child: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Text(
                    'Up Counter',
                    style: TextStyle(fontSize: 20),
                  ))),
        ));
  }
}
