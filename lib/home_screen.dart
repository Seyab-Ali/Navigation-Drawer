import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_one.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            // DrawerHeader(
            //     child: Text(
            //   'Seyab Ali',
            //   style: TextStyle(fontSize: 20),
            // )),
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(25)),
              accountName: const Text('Seyab Ali'),
              accountEmail: const Text('Seyaballimkd@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, ScreenOne.id);
              },
              leading: Icon(Icons.calculate),
              title: Text('Page 2'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              leading: Icon(Icons.calendar_month),
              title: Text('Page 3'),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenOne.id);
                  //  MaterialPageRoute(builder: (context) => const ScreenOne()));
                },
                child: const Text('Screen One'))
          ],
        ),
      ),
    );
  }
}
