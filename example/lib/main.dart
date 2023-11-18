import 'package:flutter/material.dart';
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: MoreFlex(
          direction: Axis.horizontal,
          moreMainAxisAlignment: MoreMainAxisAlignment.spaceAroundFibBack,
          children: [
            for (int i = 0; i < 5; i++)
              Container(
                width: 20,
                height: 20,
                color: Colors.lightBlue,
              ),
          ],
        ),
      ),
    );
  }
}
