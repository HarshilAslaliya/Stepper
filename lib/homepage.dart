import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _pass1 = TextEditingController();

  String? name;
  String? email;
  String? password;
  String? confirmpassword;
  String? username;
  String? pass1;

  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey3 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Stepper',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Stepper(
          currentStep: current,
          onStepContinue: () {
            setState(() {
              if (formKey1.currentState!.validate()) {
                formKey1.currentState!.save();
                if (current < 2) {
                  ++current;
                }
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current > 0) {
                --current;
              }
            });
          },
          steps: [
            Step(
              isActive: (current >= 0) ? true : false,
              title: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Container(
                child: Form(
                  key: formKey1,
                  child: Column(
                    children: [
                      Container(
                        width: 280,
                        child: TextFormField(
                          controller: _name,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Invalid Name';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            name = val;
                          },
                          style: const TextStyle(fontSize: 17),
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              size: 28,
                            ),
                            enabled: true,
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                              fontSize: 17,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 280,
                        child: TextFormField(
                          controller: _email,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Invalid Email';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            email = val;
                          },
                          style: const TextStyle(fontSize: 17),
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 28,
                            ),
                            enabled: true,
                            hintText: "Email Id",
                            hintStyle: TextStyle(
                              fontSize: 17,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 280,
                        child: TextFormField(
                          obscureText: true,
                          controller: _password,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Invalid Password';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            password = val;
                          },
                          style: const TextStyle(fontSize: 17),
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.password_outlined,
                              size: 28,
                            ),
                            enabled: true,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 17,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 280,
                        child: TextFormField(
                          controller: _confirmpassword,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Invalid Password';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            confirmpassword = val;
                          },
                          style: const TextStyle(fontSize: 17),
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.password_outlined,
                              size: 28,
                            ),
                            enabled: true,
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                              fontSize: 17,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Step(
              isActive: (current >= 1) ? true : false,
              title: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Form(
                key: formKey2,
                child: Column(
                  children: [
                    Container(
                      width: 280,
                      child: TextFormField(
                        controller: _username,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Invalid username';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) {
                          username = val;
                        },
                        style: const TextStyle(fontSize: 17),
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.perm_identity,
                            size: 28,
                          ),
                          enabled: true,
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontSize: 17,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 280,
                      child: TextFormField(
                        controller: _pass1,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Invalid Password';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (val) {
                          pass1 = val;
                        },
                        style: const TextStyle(fontSize: 17),
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            size: 28,
                          ),
                          enabled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 17,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Step(
              state: StepState.complete,
              isActive: (current >= 2) ? true : false,
              title: Text(
                'Done',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Text('Successfuly Login'),
            ),
          ],
        ),
      ),
    );
  }
}
