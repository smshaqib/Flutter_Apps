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
                  MaterialPageRoute(builder: (context) =>  Page3()),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
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
              'p1_icon.jpg', // Replace with your image path
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
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                // Password Input
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10.0),
                // Continue With Text
                Text(
                  'Continue With',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
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
                        SizedBox(width: 10.0),
                        Text(
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
                SizedBox(height: 10.0),
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
                        SizedBox(width: 10.0),
                        Text(
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
                SizedBox(height: 20.0),
                // Buttons Row (Login and Sign In)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page4()), // Navigate to Page4
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button background color for login
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0), // Adjust the width between buttons
                    // Sign In Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page4()), // Navigate to Page4
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button background color for sign in
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
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
              'p1_icon.jpg', // Replace with your image path
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
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                // Password Input
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                // Confirm Password Input
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10.0),
                // Continue With Text
                Text(
                  'Sign Up With',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20.0),
                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page5()), // Navigate to Page5
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color for sign-up
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign Up',
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
          // Green background button to go back to Page 3
          Positioned(
            top: 40.0,
            left: 20.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to Page3
              },
              backgroundColor: Colors.blue,
              child: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}





class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  String _selectedButton = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('p1_bg.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered Column for Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Big Text "Payment Method"
                Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0), // Added spacing
                // Small Text "This data will be displayed in your account profile for security"
                Text(
                  'This data will be displayed in your account profile for security',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0), // Added spacing
                // Rest of the content (payment buttons) remains unchanged
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedButton = 'paypal';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButton == 'paypal' ? Colors.blue : Colors.white, // Button background color
                    minimumSize: Size(700, 100), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: _selectedButton == 'paypal' ? Colors.blue : Colors.transparent, width: 2.0),
                    ),
                  ),
                  child: Image.asset(
                    'paypal.png', // PayPal image asset
                    width: 300.0, // Image width
                    height: 80.0, // Image height
                  ),
                ),
                SizedBox(height: 20.0), // Added spacing
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedButton = 'bcash';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButton == 'bcash' ? Colors.blue : Colors.white, // Button background color
                    minimumSize: Size(700, 100), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: _selectedButton == 'blue' ? Colors.green : Colors.transparent, width: 2.0),
                    ),
                  ),
                  child: Image.asset(
                    'bcash.png', // bKash image asset
                    width: 300.0, // Image width
                    height: 80.0, // Image height
                  ),
                ),
                SizedBox(height: 20.0), // Added spacing
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedButton = 'nogod';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButton == 'nogod' ? Colors.blue : Colors.white, // Button background color
                    minimumSize: Size(700, 100), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: _selectedButton == 'nogod' ? Colors.blue : Colors.transparent, width: 2.0),
                    ),
                  ),
                  child: Image.asset(
                    'nogod.png', // Nagad image asset
                    width: 300.0, // Image width
                    height: 80.0, // Image height
                  ),
                ),
                SizedBox(height: 20.0), // Added spacing
              ],
            ),
          ),
          // Next Button
          Positioned(
            bottom: 20.0,
            left: 800.0,
            right: 800.0,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to Page 6
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page6()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                minimumSize: Size(200, 50), // Button size
              ),
              child: Text(
                'NEXT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          // Back Button to Page 4
          Positioned(
            top: 20.0,
            left: 20.0,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to Page 4
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                minimumSize: Size(50, 50), // Button size
                shape: CircleBorder(),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Green Background Arrow Button
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              iconSize: 30,
            ),
          ),
          // Centered Column for Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Big Text "Set Your Location"
                Text(
                  'Set Your Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
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





























