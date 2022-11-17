import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _signupState();
}

class _signupState extends State<SignupPage> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: const Text('新規登録画面'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'ユーザー名を入力してください',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure1
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure1 = !_isObscure1;
                            });
                          })),
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              //   child: TextFormField(
              //     obscureText: _isObscure2,
              //     decoration: InputDecoration(
              //         labelText: 'Password',
              //         suffixIcon: IconButton(
              //             icon: Icon(_isObscure2
              //                 ? Icons.visibility_off
              //                 : Icons.visibility),
              //             onPressed: () {
              //               setState(() {
              //                 _isObscure2 = !_isObscure2;
              //               });
              //             })),
              //   ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('新規登録')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}