import 'package:flutter/material.dart';
import 'package:glowplus/utils/color.dart';

class SignInPage extends StatefulWidget {
   SignInPage({ Key? key }) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirm_passwordController = TextEditingController();

final formKey = GlobalKey<FormState>();

  bool obserText = true;

  bool obscurText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        elevation: 0, 
        leading: CircleAvatar(
          backgroundColor: light,
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: deepgreen,
            ))
        ),
      ),
   body: Form(
    key: formKey,
     child: Padding(
       padding:EdgeInsets.symmetric(horizontal: 20.0),
       child: ListView(
          
         children: [ 
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
           Align(
           alignment: Alignment.center,
           child: Text(
             "Register",
           style: TextStyle(
             color: deepgreen,
             fontSize: 30,
             fontWeight: FontWeight.w900
           ),
           )
         ),
         SizedBox(height: MediaQuery.of(context).size.height*0.02),
         Align(
           alignment: Alignment.center,
           child: Text(
             "Create your new account",
           style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w400
           ),
           )
         ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
             TextFormField(
                         validator: (value) {
                  if (value!.isEmpty) return "Enter first name";
                  return null;
                },
                        style: TextStyle(
                          color: deepgreen
                          ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: deepgreen),
                          labelText: "First Name",
                          prefixIcon: Icon(Icons.person,
                          color: deepgreen
                          ),
                          filled: true,
                          fillColor: light
                        ),
                      ),
                    
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                     
                      TextFormField(
                         validator: (value) {
                  if (value!.isEmpty) return "Enter last name";
                  return null;
                },
                        style: TextStyle(
                          color: deepgreen
                          ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: deepgreen),
                          labelText: "Last Name",
                          prefixIcon: Icon(Icons.person,
                          color: deepgreen
                          ),
                          filled: true,
                          fillColor: light
                        ),
                      ),
                    
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                      TextFormField(
                        validator: (value) {
                  if (value!.isEmpty) return "Email is required";
                  String pattern = r'\w+@\w+\.\w+';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) return "Please enter a valid email";
                  return null;
                           },
                        style: TextStyle(
                           color: deepgreen
                          ),
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: deepgreen),
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email,
                          color: deepgreen
                          ),
                          filled: true,
                          fillColor: light
                        ),
                      ),
                    
                     SizedBox(height: MediaQuery.of(context).size.height*0.02,
                    ),
                     TextFormField(
                        validator: (value) {
                  if (value!.isEmpty) return "Password is required";
                  return null;
                },
                      obscureText: obserText,
                        style: TextStyle(
                          color: deepgreen
                          ),
                        controller: passwordController,
                        // obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: deepgreen),
                          labelText: ("Password:"),
                           prefixIcon: Icon(Icons.lock,
                          color: deepgreen
                          ),
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
                          filled: true,
                          fillColor: light
                        ),
                      ),
                    
          SizedBox(height: MediaQuery.of(context).size.height*0.02,
                    ),
                    TextFormField(
                       validator: (value) {
                  if (value!.isEmpty) {
                    return ("Re-enter password");
                    } else if (passwordController.text != confirm_passwordController.text){
                      return ("Password does not match");
                    }
                  return null;
                       },
                      obscureText: obscurText,
                      style: TextStyle(
                        color: deepgreen
                        ),
                      controller: confirm_passwordController,
                      // obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        border: InputBorder.none,
                        labelStyle: TextStyle(color: deepgreen),
                        labelText: ("Confirm Password:"),
                         prefixIcon: Icon(Icons.lock,
                        color: deepgreen
                        ),
                       suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscurText = !obscurText;
                          });
                        },
                        child: Icon(
                          obscurText == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: deepgreen,
                        )),
                        filled: true,
                        fillColor: light
                      ),
                    ),
                     SizedBox(height: MediaQuery.of(context).size.height*0.04),
   
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                            Text("By signing up you agree to our ",
                            style: TextStyle(
                             color: deepgreen,
                             fontWeight: FontWeight.w800
                              ),
                            ),
                     InkWell(
                       onTap: () {},
                       child: Text("Terms of use",
                              style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w800
                                ),
                              ),
                     ),
                      ],
                    
        ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          Text("and ",
                          style: TextStyle(
                           color: deepgreen,
                           fontWeight: FontWeight.w800
                            ),
                          ),
                   InkWell(
                     onTap: () {},
                     child: Text("privacy policy",
                            style: TextStyle(
                             color: black,
                             fontWeight: FontWeight.w800
                              ),
                            ),
                   ),
                    ],
                  ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,
                    ),
                    Padding(
                     padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                     child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print ('Sign up successful');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: Size(300, 52),
                    primary: deepgreen,
                  ),
                  child: const Text("Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
                    ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          Text("Already have an account? ",
                          style: TextStyle(
                           color: deepgreen
                            ),
                          ),
                   InkWell(
                     onTap: () {},
                     child: Text("Sign In",
                            style: TextStyle(
                             color: deepgreen,
                             fontWeight: FontWeight.w800
                              ),
                            ),
                   ),
                    ],
                  )
         ]
       ),
     ),
   )
                
     );
            

        
  }
}