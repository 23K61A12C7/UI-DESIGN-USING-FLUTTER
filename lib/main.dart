import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets & Layouts',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widgets & Layouts'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Text Widget
                Text(
                  'Hello, Flutter!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),

                // Image Widget
                Image.network(
                  'https://flutter.dev/images/flutter-logo-sharing.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 16),

                // Container Widget
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.blueAccent,
                  alignment: Alignment.center,
                  child: Text(
                    'This is a Container',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(height: 16),

                // Row Layout
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 32),
                    Text('Row Item 1'),
                    Text('Row Item 2'),
                  ],
                ),
                SizedBox(height: 16),

                // Column Layout
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Column Item 1'),
                    Text('Column Item 2'),
                    Text('Column Item 3'),
                  ],
                ),
                SizedBox(height: 16),

                // Stack Layout
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.green[200],
                    ),
                    Image.network(
                      'https://flutter.dev/images/favicon.png',
                      width: 60,
                      height: 60,
                    ),
                    Text(
                      'Stacked!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}