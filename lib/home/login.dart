import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //String username = "", password = "";
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  showLoadingDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: const [
                CircularProgressIndicator(),
                SizedBox(
                  width: 20,
                ),
                Text("Logging in......"),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: loginKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset("image/71216-delivery-guy.json",
                        width: 300, height: 200),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Log in",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text == null || text == "") {
                          return "This field is required";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _usernameController,
                      /* onChanged: (newVal) {
                        username = newVal;
                      },*/
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Email",
                        suffixIcon: Icon(Icons.person),
                        /* fillColor: Colors.blue,
                        filled: true,*/
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (text) {
                        if (text == null || text == "") {
                          return "This field is required";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _passwordController,
                      /* onChanged: (newVal) {
                        password = newVal;
                      },*/
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: Icon(Icons.password),
                        /*fillColor: Colors.blue,
                        filled: true,*/
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            //style: BorderStyle.none,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Log in"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
