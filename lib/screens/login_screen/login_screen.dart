import 'package:flutter/material.dart';
import 'package:theme_demo/screens/dashbord_screen/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String groupValue = "";
  String nameValue = "";
  String passValue = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void onChangeGroup(String? value) {
    groupValue = value ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello Login",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24),
          ),
          Text("First Name",style: Theme.of(context).textTheme.titleSmall,),
          TextField(
            controller: nameController,
            onChanged: (value) {
              nameValue = value;
            },
          ),
          Text("Password"),
          TextField(
            controller: passController,
            onChanged: (value) {
              passValue = value;
            },
          ),
          Row(
            children: [
              Radio<String>(
                value: "Male",
                groupValue: groupValue,
                onChanged: (value) => onChangeGroup(value!),
              ),
              Text("Male"),
              Radio<String>(
                value: "Female",
                groupValue: groupValue,
                onChanged: (value) => onChangeGroup(value!),
              ),
              Text("Female"),
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.skip_next,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
