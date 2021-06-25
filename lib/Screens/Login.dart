import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                height: 100,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 60.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              // ElevatedButton(
              //   style: TextButton.styleFrom(minimumSize: Size(100, 35)),
              //   child: Text("Login"),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRouts.homerout);
              //   },
              // ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changebutton = true;
                  });

                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRouts.homerout);
                },
                child: AnimatedContainer(
                  duration: Duration(
                    seconds: 1,
                  ),
                  width: changebutton ? 35 : 100,
                  height: 35,
                  alignment: Alignment.center,
                  child: changebutton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: changebutton ? 10 : 15,
                          ),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // shape: changebutton ? BoxShape.circle : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changebutton ? 35 : 8),
                  ),
                ),
              )
            ],
          ),
        ),
        color: Colors.white);
  }
}
