import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const FifthRoute(),
      '/sixth': (context) => const SixthRoute(),
      '/seventh': (context) => const SeventhRoute(),
    },
  )); //MaterialApp
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Text(
                  'Rico Manaois Ballesteros',
                  style: TextStyle(
                    fontFamily: 'Orpheus',
                    fontSize: 35.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'ABOUT ME',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.lightBlueAccent,
                    fontSize: 17.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FifthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.account_box,
                  ),
                  label: Text('PERSONAL INFORMATION'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.school,
                  ),
                  label: Text('EDUCATION BACKGROUND'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SeventhRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.laptop,
                  ),
                  label: Text('PERSONAL EXPERIENCE'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                  ),
                ), // ElevatedButton
                Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.logout,
                  ),
                  label: Text('Logout'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.redAccent,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information"),
        backgroundColor: Colors.lightBlueAccent,
      ), // AppBar
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Name: Rico Manaois Ballesteros',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Age: 24 years old',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Address: Macabito, Calasiao, Pangasinan',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Phone Number: +639277393314',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Email: ballesterosrico114@gmail.com',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // Center
    ); // Scaffold
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.lightBlueAccent,
      ), // AppBar
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Tertiary Education ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle:
                      Text('Philippine College of Science and Technology'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Philippine College of Science and Technology',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text(
                      'Bachelor of Science in Information Technology 2019-2023'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Secondary Education',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Macabito National Highschool',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text('Senior High School 2017-2019'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Macabito National Highschool',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text('Junior High School 2011-2017'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Primary Education',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Macabito Elementary School',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text('2006-2011'),
                ),
              ),
            ],
          ),
        ),
      ), // Center
    ); // Scaffold
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Background"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.laptop,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Professional Summary",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("I'm a coder"),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.laptop,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Skills and Abilities',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("Trustworthy, Multi-Tasking, Loyalty "),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.laptop,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Web-Development',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text(
                      "I have a experience to developing website using PHP and knowledge to front-end"),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.laptop,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'Certificates',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("NCII holder in Computer System Servicing "),
                ),
              ),
            ],
          ),
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}
