// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'FAMT Website';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Image.network(
            "http://famt.ac.in/wp-content/uploads/2021/07/IMG_3192-1.webp"),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Finolex Academy of Management and Technology'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'FAMT Website')),
                );
              },
            ),
            ListTile(
              title: const Text('Contact Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact Form")),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Finolex Academy of Management and Technology'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'FAMT Website')),
                );
              },
            ),
            ListTile(
              title: const Text('Contact Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutRoute()),
                );
              },
            ),
          ],
        ),
      ),
      body: const MyCustomForm(),
    );
  }
}

class AboutRoute extends StatelessWidget {
  const AboutRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Contact Form")),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Finolex Academy of Management and Technology'),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'FAMT Website')),
                  );
                },
              ),
              ListTile(
                title: const Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
              ),
              ListTile(
                title: const Text('About'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutRoute()),
                  );
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
              "Finolex Academy of Management and Technology (FAMT) was established in 1996 to impart quality technical education at affordable cost and contribute to the industrial growth of our nation. The academy is approved by All India Council for Technical Education (AICTE), New Delhi; recognized by Directorate of Technical Education (DTE), Government of Maharashtra, affiliated to University of Mumbai, and accredited with B++ Grade by National Assessment & Accreditation Council (NAAC).\nSituated on the picturesque coast of western Maharashtra, FAMT is one of the reputed engineering institutes in the region and state. The academy is known for its quality technical education and has a distinct identity in the University of Mumbai for its consistently outstanding results. The academy has received appreciation and many awards from various national bodies.\nFAMT focuses on nurturing young technical professionals who are immensely dedicated and adept in their field and strongly believe in fair play, perseverance and harmonious development of mind and personality of our students. Accordingly, the academy takes efforts to offer a vibrant academic ambiance. The academy provides various incentives in the form of scholarships and prizes, and co-curricular and extracurricular platforms to foster leadership, team skills, creativity and entrepreneurial values among students."),
        ));
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 150.0, top: 40.0),
            child: FlatButton(
              color: Colors.red,
              splashColor: Colors.black12,
              onPressed: () {},
              child: const Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
