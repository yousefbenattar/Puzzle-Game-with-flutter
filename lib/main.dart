import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer:const NavBar(),
        appBar: AppBar(
          title: const Text('Puzzel App'),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
       const UserAccountsDrawerHeader(
        accountName: Text ('accountName'),
        accountEmail: Text ('accountEmail'),
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(image: AssetImage('images/bg.jpg'),fit: BoxFit.cover),

        ),
         ),
        ListTile(
          leading: const Icon(Icons.switch_account),
          title: const Text('Account'),
          onTap: () => print('Click on Account'),
        ),
        ListTile(
          leading: const Icon(Icons.more),
          title: const Text('More App'),
          onTap: () => print('More App'),
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Quit'),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const MoreApps ()));},
        ),
      ]),
    );
  }
}

class MoreApps extends StatelessWidget {
  const MoreApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
        children: 
          List.generate(100, (index) {
    return Center(
      child: Text(
        'Item $index',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }),
        
        ),
      ),
    );
  }
}
