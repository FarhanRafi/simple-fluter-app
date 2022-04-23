import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  SharedPreferences? sharedPreferences;
  String? email;

  getPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    email = sharedPreferences?.getString("email");
    setState(() {});
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        email.toString(),
      ),
    );
  }
}
