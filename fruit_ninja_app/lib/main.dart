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
                  MaterialPageRoute(builder: (context) =>  const Page3()),
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
                    color: Colors.white,
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
                const SizedBox(height: 20.0),
                // Buttons Row (Login and Sign In)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Page4()), // Navigate to Page4
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button background color for login
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
                    const SizedBox(width: 10.0), // Adjust the width between buttons
                    // Sign In Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Page4()), // Navigate to Page4
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button background color for sign in
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
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
  const Page4({super.key});

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
                const SizedBox(height: 20.0),
                // Confirm Password Input
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10.0),
                // Continue With Text
                const Text(
                  'Sign Up With',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page5()), // Navigate to Page5
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color for sign-up
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
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
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}





class Page5 extends StatefulWidget {
  const Page5({super.key});

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
            decoration: const BoxDecoration(
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
                const Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0), // Added spacing
                // Small Text "This data will be displayed in your account profile for security"
                const Text(
                  'This data will be displayed in your account profile for security',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0), // Added spacing
                // Rest of the content (payment buttons) remains unchanged
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedButton = 'paypal';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButton == 'paypal' ? Colors.blue : Colors.white, // Button background color
                    minimumSize: const Size(700, 100), // Button size
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
                const SizedBox(height: 20.0), // Added spacing
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedButton = 'bcash';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButton == 'bcash' ? Colors.blue : Colors.white, // Button background color
                    minimumSize: const Size(700, 100), // Button size
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
                const SizedBox(height: 20.0), // Added spacing
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedButton = 'nogod';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButton == 'nogod' ? Colors.blue : Colors.white, // Button background color
                    minimumSize: const Size(700, 100), // Button size
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
                const SizedBox(height: 20.0), // Added spacing
              ],
            ),
          ),
          // Next Button
          Positioned(
            bottom: 100,
            right: 50,
            left: 50,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to Page 6
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page6()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                minimumSize: const Size(200, 50), // Button size
              ),
              child: const Text(
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
                minimumSize: const Size(50, 50), // Button size
                shape: const CircleBorder(),
              ),
              child: const Icon(
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
  const Page6({super.key});



  MySnackBar(message, context){


    return ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(content: Text(message), duration: Duration(microseconds: 600),)
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Inventory"),
        titleSpacing: 60,
        centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
        elevation: 50,
        backgroundColor: Colors.green,

        actions: [

          IconButton(onPressed: () {MySnackBar("I am Comment", context);}, icon: Icon(Icons.comment),),
          IconButton(onPressed: () {MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {MySnackBar("I am setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {MySnackBar("I am Email", context);}, icon: Icon(Icons.email)),

        ],

      ),

      floatingActionButton: FloatingActionButton(

        elevation: 100,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("I am floating action button", context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(

          currentIndex: 1,

          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contrac"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),

          ],

          onTap: (int index){

            if(index==0){

              MySnackBar("Iam home bottom Menu", context);
            }
            if(index==1){

              MySnackBar("Iam contract bottom Menu", context);
            }
            if(index==2){

              MySnackBar("Iam profile bottom Menu", context);
            }

          }

      ),

      drawer: Drawer(

        //list view er vetore sob item children

        child: ListView(



          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page5()), // Navigate to Page5
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color for sign-up
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),


            DrawerHeader(

              //userAccountsDrawer Special type of header for child.
              //chile: Text("text") evabeo dea jay
              child: UserAccountsDrawerHeader(



                decoration: BoxDecoration(color: Colors.white),
                accountName: Text("SM Shaqib", style: TextStyle(color: Colors.blue),),
                accountEmail: Text("smshaqib@gmail.com", style: TextStyle(color: Colors.blue),),
                currentAccountPicture: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3eFRPDUsITnmJVYO_s1JCHp6BtIqSU8OtJifOj4xIf_cvt5jIS6jWIhYjlcKtUXYlFGM&usqp=CAU'),

                onDetailsPressed: (){MySnackBar("This Is Profile", context);},

              ),

            ),

            ListTile(

              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {MySnackBar("Home", context);},

            ),

            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contract"),
              onTap: () {MySnackBar("Contract", context);},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {MySnackBar("Profile", context);},
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {MySnackBar("Email", context);},
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {MySnackBar("Phone", context);},
            ),
          ],
        ),

      ),

      body: Text("hello",),


      endDrawer: Drawer(

        //list view er vetore sob item children

        child: ListView(

          children: [
            DrawerHeader(

              //userAccountsDrawer Special type of header for child.
              //chile: Text("text") evabeo dea jay
              child: UserAccountsDrawerHeader(



                decoration: BoxDecoration(color: Colors.white),
                accountName: Text("SM Shaqib", style: TextStyle(color: Colors.blue),),
                accountEmail: Text("smshaqib@gmail.com", style: TextStyle(color: Colors.blue),),
                currentAccountPicture: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3eFRPDUsITnmJVYO_s1JCHp6BtIqSU8OtJifOj4xIf_cvt5jIS6jWIhYjlcKtUXYlFGM&usqp=CAU'),

                onDetailsPressed: (){MySnackBar("This Is Profile", context);},

              ),

            ),

            ListTile(

              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {MySnackBar("Home", context);},

            ),

            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contract"),
              onTap: () {MySnackBar("Contract", context);},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {MySnackBar("Profile", context);},
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {MySnackBar("Email", context);},
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {MySnackBar("Phone", context);},
            ),
          ],
        ),

      ),


    );

  }
}


class Scroll extends StatelessWidget {

  List<String> studentList = [

    'shaqib',
    'rakib',
    'abir',
    'hasan',
    'mahmud',
    'tmu',
    'nahid',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Home Scren",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
//Scaffold Messeges
              // ScaffoldMessenger.of(context).showSnackBar(
              //
              //   SnackBar(
              //     content: Text(
              //       "Your money has been Transfered",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //
              //     backgroundColor: Colors.green,
              //     duration: Duration(seconds: 1),
              //   ),
              //
              // );
//end of scaffold messeges

              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Send Money"),
                      content:
                      Text("Are you sure that you want to send money"),
                      actions: [],
                    );
                  });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),

      //example 1

      // body: SingleChildScrollView(
      //
      //   child: Column(
      //
      //
      //     children: [
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //       Text("asdfasd"),
      //     ],
      //   ),
      // )

      //example 2
      // body: ListView.builder(
      //
      //   itemCount: studentList.length,
      //
      //   itemBuilder: (context,index){
      //
      //     //return Text('${index+1}', style: TextStyle(fontSize: 12),);
      //     return Padding(
      //
      //       padding: EdgeInsets.all(8),
      //
      //       child: Column(
      //
      //         children: [
      //           Text(studentList[index], style: TextStyle(),),
      //
      //           Divider(),
      //         ],
      //
      //
      //       ),
      //
      //     );
      //
      //   },
      //
      // ),

      //example 3

      // body: ListView.separated(
      //
      //   itemCount: studentList.length,
      //
      //   itemBuilder: (context,index){
      //
      //     //return Text('${index+1}', style: TextStyle(fontSize: 12),);
      //     return Padding(
      //
      //       padding: EdgeInsets.all(8),
      //
      //       child: Row(
      //
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //
      //         children: [
      //           Text(studentList[index], style: TextStyle(),),
      //
      //           Text(studentList[index], style: TextStyle(),),
      //         ],
      //       ),
      //
      //     );
      //
      //   },
      //
      //   separatorBuilder: (context,index){
      //
      //     return Divider(
      //       height: 21,
      //       thickness: 2,
      //       endIndent: 15,
      //       indent: 8,
      //       color: Colors.pink,
      //
      //     );
      //
      //   },
      //
      // ),


      //example 4

      // body: GridView(
      //
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      //
      //   children: [
      //
      //     Text('1'),
      //     Text('2'),
      //     Text('3'),
      //     Text('4'),
      //     Text('5'),
      //     Text('6'),
      //     Text('7'),
      //     Text('8'),
      //
      //
      //   ],
      //
      // ),

      //example 5

      body: SingleChildScrollView(
        child: Column(
          children: [

            ListView.builder(

                itemCount: studentList.length,

                itemBuilder: (context,index) {
                  //return Text('${index+1}', style: TextStyle(fontSize: 12),);
                  return Padding(

                    padding: EdgeInsets.all(8),

                    child: Column(

                      children: [
                        Text(studentList[index], style: TextStyle(),),

                        Divider(),
                      ],


                    ),
                  );
                }
            ),
            SizedBox(

              height: 200,

              child: GridView.builder(

                  shrinkWrap: true,

                  itemCount: 100,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 4,

                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,


                  ),

                  itemBuilder: (context, index){


                    return Column(

                      children: [

                        Text('Roll - ${index}'),
                        Text(studentList[index])

                      ],

                    );

                  }


              ),
            ),
          ],
        ),
      ),

    );
  }
}
