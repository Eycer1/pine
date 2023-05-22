import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
        // leading: IconButton(
        //   icon: const Icon(Icons.menu, color: Colors.white),
        //   tooltip: 'Show Menu',
        //   onPressed: () {},
        // )
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItems(context)],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Material(
    color: Colors.lightBlueAccent,
    child: InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage(
                  'https://www.metroworldnews.com/resizer/oPDi1dmmCn80IyjG0eFGA8RL91U=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/YDPALTQPNVA6HMR6TPOPZTHJKM.jpg'),
            ),
            SizedBox(height: 12),
            Text(
              'Kim Taehyun',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            Text(
              'email@example.com',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      ),
    ));
Widget buildMenuItems(BuildContext context) => Column(
      children: [
        // Home
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () {},
        )
      ],
    );
