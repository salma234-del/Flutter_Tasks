import 'package:flutter/material.dart';
import 'package:flutter_application_4/shared/components/componants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailCon = TextEditingController();

  var passCon = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultTextField(
                      controller: emailCon,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'email must not be empty';
                        }
                        return null;
                      },
                      label: 'Email',
                      preIcon: Icons.email,
                      onSubmit: (value) {
                        print(value);
                      },
                      onChange: (value) {
                        print(value);
                      },
                    ),
                    const SizedBox(height: 20),
                    defaultTextField(
                      controller: passCon,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                      label: 'Password',
                      preIcon: Icons.lock,
                      suffIcon: pass ? Icons.visibility : Icons.visibility_off,
                      suffPressed: () {
                        setState(() {
                          pass = !pass;
                        });
                      },
                      password: pass,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print('salma');
                        }
                      },
                      text: 'LOGIN',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Register Now'),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
