import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        //  mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: _decrementCounter,
            icon: const Icon(Icons.remove),
            color: Colors.white,
            iconSize: 20,
            //  padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(),
            splashRadius: 20,
            highlightColor: Colors.pink[200],
            splashColor: Colors.pink[400],
            tooltip: 'Decrement',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          Text(
            '$_counter',
            style: TextStyles.font14WhiteSemiBold,
          ),
          IconButton(
            onPressed: _incrementCounter,
            icon: const Icon(Icons.add),
            color: Colors.white,
            iconSize: 20,
            // padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(),
            splashRadius: 20,
            highlightColor: Colors.pink[200],
            splashColor: Colors.pink[400],
            tooltip: 'Increment',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ],
      ),
    );
  }
}
