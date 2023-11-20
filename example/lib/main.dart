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
      home: MyHomePage(title: 'MoreMainAxisAlignment'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: MoreMainAxisAlignment.values.length,
          itemBuilder: (context, index) {
            return Container(
              color: index.isEven ? Colors.white : Colors.black12,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  MoreFlex(
                    direction: Axis.horizontal,
                    moreMainAxisAlignment: MoreMainAxisAlignment.values[index],
                    customList: const [0, 0.25, 0.35, 0.5, 0.98],
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                    ],
                  ),
                  Text(MoreMainAxisAlignment.values[index].toShortString()),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

extension on MoreMainAxisAlignment {
  String toShortString() {
    return toString().split('.').last;
  }
}
