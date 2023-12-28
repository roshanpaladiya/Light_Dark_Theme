import 'package:flutter/material.dart';
import 'package:theme_demo/main.dart';
import 'package:theme_demo/utils/colors_res.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          Icon(Icons.light_mode),
          Switch(
            value: colorRes.themeMode==ThemeMode.dark,
            onChanged: (value) {
              colorRes.onChangeTheme(value);
              setState(() {

              });
            },
          ),
          Icon(Icons.dark_mode),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Hello",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "My Name Is Jaydip",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "I am a Flutter Developer",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
