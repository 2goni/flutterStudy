<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('제스쳐'),
          backgroundColor: Colors.amber,
=======
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        //도화지 위젯
        appBar: AppBar(
          title: Text('Study to Container!'),
          backgroundColor: Colors.blue,
>>>>>>> d929341ffcff1d849bd1463c688277aca57ad3c7
        ),
        body: Body(),
      ),
    ),
<<<<<<< HEAD
  );
=======
  ));
>>>>>>> d929341ffcff1d849bd1463c688277aca57ad3c7
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
<<<<<<< HEAD
        TestCheckBox(),
        TestRadioButton(),
        TestSlider(),
        TestSwitch(),
        TestPopupMenu()
      ],
=======
        ExampleStateless(),
        ExampleStateful(index: 5)
      ]
>>>>>>> d929341ffcff1d849bd1463c688277aca57ad3c7
    );
  }
}

<<<<<<< HEAD
class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value ?? false)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value ?? false)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value ?? false)),
      ],
    );
  }

  void changeValue(int i, bool value) {
    setState(() {
      values[i] = value;
      print(values);
    });
  }
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestValue { test1, test2, test3 }

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectvalue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
              value: TestValue.test1,
              groupValue: selectvalue,
              onChanged: (value) => setState(() => selectvalue = value!)),
          title: Text(TestValue.test1.name),
          onTap: () => setState(() {
            if (selectvalue != TestValue.test1) {
              selectvalue = TestValue.test1;
            }
          }),
        ),
        Radio<TestValue>(
            value: TestValue.test2,
            groupValue: selectvalue,
            onChanged: (value) => setState(() => selectvalue = value!)),
        Radio<TestValue>(
            value: TestValue.test3,
            groupValue: selectvalue,
            onChanged: (value) => setState(() => selectvalue = value!))
      ],
    );
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${value.round()}'),
        Slider(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
          label: value.round().toString(),
          // 드래그 라벨
          divisions: 100,
          // 구간 나누기
          max: 100,
          //최대값
          min: 0, //최소값
        ),
      ],
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
        CupertinoSwitch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue))
      ],
=======
class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final index;

  const ExampleStateful({required this.index, super.key});
  
  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textEditingController = TextEditingController();
  }


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if(_index == 5) {
              _index = 0;
              return;
            }
            _index++;
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
            child: Text('$_index')
          ),
        ),
      ),
>>>>>>> d929341ffcff1d849bd1463c688277aca57ad3c7
    );
  }
}

<<<<<<< HEAD
class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestValue value = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value.name),
        PopupMenuButton(itemBuilder: (context) {
          return TestValue.values
              .map((v) => PopupMenuItem(value: v, child: Text(v.name)))
              .toList();
        },
          onSelected: (newVlaue) => setState(() => value = newVlaue),
        ),
      ],
    );
  }
}
=======


>>>>>>> d929341ffcff1d849bd1463c688277aca57ad3c7
