<p align="center">
  <img src="lib/Screenshot 2023-09-23 at 01.29.38.png" alt="" width="200">
</p>

# Mfagrilist

A Flutter widget for creating visually appealing carousels with customizable items.

## Table of Contents

- [About](#about)
- [Key Properties](#key-properties)
- [Example](#example)

## About

`Mfagrilist` is a versatile Flutter widget that simplifies the creation of carousels and slider-like UI components. It allows you to showcase a list of items with a prominent middle item and customizable visual effects.

## Key Properties

 viewPortSize: A double value between 0 and 1 that determines the size of the visible portion of the items. For example, a value of 0.3 means that only 30% of the items will be visible at a time.

 disableInfiniteScrolling: A boolean that determines whether infinite scrolling is enabled. When set to false, the list will continue scrolling indefinitely in both directions. When set to true, the list will stop scrolling when it reaches the beginning or end of the items.

middleItemScaleRatio: A double value that specifies the scale factor for the middle item. This property is only relevant when scaleMiddleItem is set to true. The default value is 1, meaning no scaling.

 scaleMiddleItem: A boolean that determines whether to scale the middle item. When set to true, the middle item will be scaled according to the middleItemScaleRatio property.

 itemBuilder: A callback function that defines the widget for each item in the list.

itemCount: An integer that specifies the total number of items in the list.

## Example 
```dart
import 'package:curvelist/mfagrilist.dart';
import 'package:curvelist/painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
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
  
final List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.deepPurple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 500,
          color: Colors.amber,
          child: 
          Mfagrilist(itemBuilder: (context,index){
            return Center(
                                child: CustomPaint(
                                  size: Size(
                                    350,
                                    450,
                                  ),
                                  painter:
                                      RPSCustomPainter(color: colorList[index]),
                                ),
                              );
          },
          itemCount: colorList.length,
          scaleMiddleItem: true,
          viewPortSize: 0.3,
          disableInfiniteScrolling: false,
          middleItemScaleRatio: 1,
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

