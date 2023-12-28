import 'package:flutter/material.dart';
import 'package:theme_demo/screens/spash_screen/spalsh_screen.dart';
import 'package:theme_demo/utils/colors_res.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

ColorRes colorRes = ColorRes();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    // TODO: implement initState
    colorRes.addListener(themeListener);
    super.initState();
  }

  void themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    colorRes.removeListener(themeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      themeMode: colorRes.themeMode,
      theme: ColorRes.lightTheme,
      darkTheme: ColorRes.darkTheme,
      home: const SplashScreen(),
    );
  }
}
