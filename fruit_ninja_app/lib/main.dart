import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Home(),
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
                          MaterialPageRoute(builder: (context) => const Page6()), // Navigate to Page4
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
                  MaterialPageRoute(builder: (context) =>  ScrollablePage ()),
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

        title: Text("User Profile"),
        titleSpacing: 60,
        centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
        elevation: 50,
        backgroundColor: Colors.blue,

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

class ScrollablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Text(
              'Choose your favorite Restaurant',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildRestaurantCard(
                  context,
                  'Diu Green Garden',
                  Icons.restaurant,

                ),
                _buildRestaurantCard(
                  context,
                  'Tasty Treat',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'kacchi Vai',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Mithai',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Diu Cafe',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Diu Ghorer Khabar',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Bachelors',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Diu food delivery',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Mr Breaker',
                  Icons.restaurant,
                ),
                _buildRestaurantCard(
                  context,
                  'Cookies and Cream',
                   Icons.restaurant,
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRestaurantCard(BuildContext context, String name, IconData icon) {
    return GestureDetector(
      onTap: () {
        _navigateToFoodList(context, name); // Navigate to food list page on tap
      },
      child: Card(
        child: ListTile(
          leading: Icon(icon),
          title: Text(name),
        ),
      ),
    );
  }

  void _navigateToFoodList(BuildContext context, String restaurantName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }
}

class FoodListPage extends StatelessWidget {
  final String restaurantName;

  FoodListPage({required this.restaurantName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurantName),
      ),
      body: ListView(
        children: <Widget>[
          _buildFoodItem('Coffee', '\$3'),
          _buildFoodItem('Burger', '\$7'),
          _buildFoodItem('Cake', '\$5'),
          _buildFoodItem('Pizza', '\$10'),
          _buildFoodItem('Salad', '\$6'),
          _buildFoodItem('Ice Cream', '\$4'),
        ],
      ),
    );
  }

  Widget _buildFoodItem(String itemName, String price) {
    return ListTile(
      title: Text(itemName),
      trailing: Text(price),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Food Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,

        leading: Container(
          width: 40, // Set the width of the container
          height: 40, // Set the height of the container
          margin: const EdgeInsets.all(8.0), // Add margin to position the container within the AppBar
          decoration: BoxDecoration(
            color: Colors.blue.shade300, // Set background color for the Container
            borderRadius: BorderRadius.circular(10.0), // Make the container rounded
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ScrollablePage()),
              );
            },
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                // Do nothing
              },
            ),
          ),
        ],
      ),


      body: Container(
        alignment: Alignment.center,
        height: 850,
        width: 500,
        child: SingleChildScrollView(

            child: Column(

              // child: GridView.count(
              //   crossAxisCount: 2, // Maximum of 2 buttons in a row
              //   mainAxisSpacing: 0, // Spacing between rows
              //   crossAxisSpacing: 0, // Spacing between columns
              //   childAspectRatio: 1.2, // Aspect ratio to maintain for each child
              //   physics: const NeverScrollableScrollPhysics(), // Disable GridView scrolling
              //   shrinkWrap: true,


                children: [

                  _buildImageButton2('assets/img_1.png',context),
                  _buildImageButton('assets/img.png',context),
                  _buildImageButton('assets/img_2.png',context),
                  _buildImageButton('assets/img_3.png',context),
                  _buildImageButton('assets/img_4.png',context),
                  _buildImageButton('assets/img_5.png',context),
                  _buildImageButton('assets/img_6.png',context),
                  _buildImageButton('assets/img_7.png',context),

               ],

             
          ),
        ),
      ),

    );
  }
  Widget _buildImageButton(String imagePath, BuildContext context){
    return GestureDetector(
      onTap: () {

      },
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover, // Fill the container without distorting the image
      ),
    );
  }
  Widget _buildImageButton2(String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AnotherPage()),
        );
      },
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover, // Fill the container without distorting the image
      ),
    );
  }



}




class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Pizza',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,

        leading: Container(
          width: 40, // Set the width of the container
          height: 40, // Set the height of the container
          margin: const EdgeInsets.all(8.0), // Add margin to position the container within the AppBar
          decoration: BoxDecoration(
            color: Colors.blue.shade300, // Set background color for the Container
            borderRadius: BorderRadius.circular(10.0), // Make the container rounded
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              // Navigate to another page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                // Do nothing
              },
            ),
          ),
        ],
      ),



      body: Center(

        child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,

                child: Image.asset(
                  'assets/img_1.png',
                  alignment: Alignment.center,

                  fit: BoxFit.cover, // adjust the fit as per your requirement
                ),
              ),

              Container(
                  height:40,
                  width: 400,

                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Authentic Italian Pizza',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),

                  )
              ),

              Container(
                  height:50,
                  width: 370,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Hello this is Text Hello this is Text Hello this is Text Hello this is Text Hello this is Text Hello this is Text',
                    style: TextStyle( fontSize: 14 ),

                  )
              ),

              SizedBox(

                height:40,
                width: 370,

                child: ElevatedButton(


                    onPressed: () {
                      // Add your button action here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue, // Set background color to green
                      ),



                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(150, 50), // Set the width and height of the button
                      ),
                    ),
                    child: const Text(

                      'See More',

                      style: TextStyle(color: Colors.white, fontSize: 20),

                    )
                ),
              ),

              Container(

                  height:40,
                  width: 370,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Suggestions',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),

                  )


              ),


              Row(
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      alignment: Alignment.centerRight,

                      child: Image.asset(
                        'assets/img_5.png',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover, // adjust the fit as per your requirement
                      ),

                    ),

                    Container(
                      height: 180,
                      width: 180,
                      alignment: Alignment.centerRight,

                      child: Image.asset(
                        'assets/img_4.png',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover, // adjust the fit as per your requirement
                      ),

                    ),

                  ]


              )


            ]


        ),
      ),



    );
  }
}



