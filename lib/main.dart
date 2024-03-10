import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Your App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello,',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Flutter!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to another page when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnotherPage()),
              );
            },
            icon: Icon(Icons.arrow_forward),
            label: Text('Get Started'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconWithText(icon: Icons.favorite, text: 'Favorite', color: Colors.red),
                    IconWithText(icon: Icons.mail, text: 'Email', color: Colors.blue),
                    IconWithText(icon: Icons.phone, text: 'Call', color: Colors.green),
                    IconWithText(icon: Icons.music_note, text: 'Music', color: Colors.orange),
                    IconWithText(icon: Icons.photo, text: 'Photos', color: Colors.purple),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconWithText({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(fontSize: 20, color: color),
          ),
        ],
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Another Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
