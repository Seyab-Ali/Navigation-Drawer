import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const String id = 'screen_one';

  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Column(
        children: [
          // TextButton(
          //     onPressed: () {
          //       Navigator.pop(context,
          //           MaterialPageRoute(builder: (context) => const ScreenOne()));
          //     },
          //     child: const Text('Home Screen'))

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: const Text('seyab ali'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenOne.id);
                  },
                );
              },
              itemCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
