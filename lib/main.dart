import 'package:flutter/material.dart';
import 'package:flutter_theme_provider/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Provider',
      theme: light,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Provider'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
              title: Text("Dark Mode"),
              onChanged: (val){
                
              },
              value: false,
            ),

            Card(
              child: ListTile(
                title: Text("This is just a list tile on a card."),
              ),
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              child: Text("Continue"),
              onPressed: (){},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}