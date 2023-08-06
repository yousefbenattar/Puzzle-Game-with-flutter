import 'dart:js';

import 'package:flutter/material.dart';
import 'package:puzzel_application/main.dart';

class MoreApps extends StatelessWidget {
  const MoreApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('More Apps'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(const MainApp()),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          'images/img1.jpg',
                          width: 50,
                          height: 50,
                        ),
                        const Text('App 1')
                      ],
                    )),
                Column(
                  children: [
                    Image.asset('images/img2.jpg', width: 50, height: 50),
                    const Text('App 2')
                  ],
                ),
                Column(
                  children: [
                    Image.asset('images/img3.jpg', width: 50, height: 50),
                    const Text('App 3')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/img4.jpg',
                      width: 50,
                      height: 50,
                    ),
                    const Text('App 4')
                  ],
                ),
                Column(
                  children: [
                    Image.asset('images/img5.jpg', width: 50, height: 50),
                    const Text('App 5')
                  ],
                ),
                Column(
                  children: [
                    Image.asset('images/img6.jpg', width: 50, height: 50),
                    const Text('App 6')
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
