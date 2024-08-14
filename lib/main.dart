import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylingScreen(),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling and Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),

            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20.0),

            TextButton(
              onPressed: () {

                final snackBar = SnackBar(
                  content: Text('You clicked the button!'),

                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Click Me'),
            ),

           Container(
             padding: EdgeInsets.only(left: 197),
             child: Row(
               children: [
                 Text('Welcome to '),
                 Text('Flutter! ',style: TextStyle(
                   color: Colors.green,
                 ),),
               ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}
