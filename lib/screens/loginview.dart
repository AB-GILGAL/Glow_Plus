import 'package:flutter/material.dart';
import 'package:glowplus/utils/color.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool obserText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/1.jpg"), fit: BoxFit.fill))),
            Center(
              child: Text(
                'Heya Pal! Welcome back',
                style: TextStyle(
                    fontSize: 30,
                    color: deepgreen,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Log in to your account',
                style: TextStyle(
                    fontSize: 15,
                    color: deepgreen,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Email is required";
                  String pattern = r'\w+@\w+\.\w+';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) return "invalid e-mail address";
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: light,
                    prefixIcon: Icon(
                      Icons.email,
                      color: deepgreen,
                    ),
                    labelText: "Enter Email here",
                    labelStyle: TextStyle(fontSize: 12, color: deepgreen)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextFormField(
                obscureText: obserText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: light,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: deepgreen,
                  ),
                  labelText: "Enter Password here",
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obserText = !obserText;
                        });
                      },
                      child: Icon(
                        obserText == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: deepgreen,
                      )),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Password is required";
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: deepgreen,
                    size: 20,
                  ),
                  Text('  Remember me',
                      style: TextStyle(color: deepgreen, fontSize: 10)),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text('Fogot Password?',
                        style: TextStyle(color: deepgreen, fontSize: 10)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('successful');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: Size(300, 52),
                    primary: deepgreen,
                  ),
                  child: const Text("Log in",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 15, 15),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: deepgreen),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: deepgreen,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
