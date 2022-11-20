import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buatlah textfield email
              QTextField(
                label: 'Email',
                onChanged: (v) {},
              ),

              //! 2. Buatlah textfield password
              QTextField(
                label: 'Password',
                obscure: true,
                onChanged: (v) {},
              ),
              //! 3. Buatlah textfield confirm password
              QTextField(
                label: 'Confirm Password',
                obscure: true,
                onChanged: (v) {},
              ),
              //! 4. Buat sebuah tombol,
              ElevatedButton.icon(
                onPressed: () => controller.doLogin(),
                icon: const Icon(Icons.login),
                label: const Text('Login'),
              ),
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
