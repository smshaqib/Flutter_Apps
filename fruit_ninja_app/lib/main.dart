import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('p1_bg.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Larger Overlay Image in the Middle
          Center(
            child: Image.asset(
              'assets/p1_icon.jpg', // Replace with your overlay image path
              width: 150.0, // Adjust the width as needed
              height: 150.0, // Adjust the height as needed
            ),
          ),

          // Centered Get Started Button with Shadow Slightly Above the Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0), // Adjust the bottom distance as needed
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Page2 when the button is clicked
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                  elevation: 8.0, // Shadow elevation
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/p2_bg.jpg', // Replace with your image path for Page2
              width: 400.0, // Increase the width
              height: 400.0, // Increase the height
            ),
            const SizedBox(height: 10.0), // Decrease the spacing
            const Text(
              'Find your Comfort Food Here',
              style: TextStyle(
                color: Colors.black, // Set text color to black
                fontSize: 32.0, // Increase the font size
                fontWeight: FontWeight.bold, // Increase the font weight
              ),
            ),
            const SizedBox(height: 5.0), // Decrease the spacing
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Here you can find a chef or dish for every taste and color. Enjoy!',
                    textAlign: TextAlign.center, // Align text to the center
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                      fontSize: 16.0, // Set the font size
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Add some spacing
            ElevatedButton(
              onPressed: () {
                // Navigate to Page3 when the button is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page3()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                elevation: 8.0, // Shadow elevation
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('p1_bg.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Upper-Middle Positioned Image
          Positioned(
            top: MediaQuery.of(context).size.height / 4, // Adjust the top position as needed
            left: MediaQuery.of(context).size.width / 2 - 75.0, // Adjust the left position as needed
            child: Image.asset(
              'assets/p1_icon.jpg', // Replace with your image path
              width: 150.0, // Adjust the width as needed
              height: 150.0, // Adjust the height as needed
            ),
          ),
          // Textboxes for Email and Password Input
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 20.0,
            right: 20.0,
            child: Column(
              children: [
                // Email Input
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                // Password Input
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10.0),
                // Continue With Text
                const Text(
                  'Continue With',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                // Continue with Google Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Google login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color for Google
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/google_logo.jpg', // Replace with your Google logo image path
                          width: 20.0,
                          height: 20.0,
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                // Continue with Facebook Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Facebook login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color for Facebook
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/facebook_logo.jpg', // Replace with your Facebook logo image path
                          width: 20.0,
                          height: 20.0,
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                // Login Button
                ElevatedButton(
                  onPressed: () {
                    // Handle login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color for login
                    elevation: 8.0, // Shadow elevation
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}