import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<Signupscreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = "";
  bool _obscurePassword = true;
  //TODO 1 : Fungsi SignUp
  void _signUp(){
    String name = _nameController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if(password.length < 8 ||
    password.contains(RegExp(r'[A-Z]')) ||
    password.contains(RegExp(r'[a-z]')) ||
    password.contains(RegExp(r'[0-9]')) ||
    password.contains(RegExp(r'[@#$%^&*(),.?":{}|<>]'))) {
      setState(() {
        _errorText = 
          'Minimal 8 karakter, kombinasi [A-Z], [a-z], [0-9], [@#\\\$%^&*(),.?":{}|<>]';
      });
      return;
    }

    print("Sign UP Berhasil");
    print("Nama : $name");
    print("Nama Pengguna : $username");
    print("Password : $password");

  }

  //TODO 2 : Fungsi Dispose
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Nama",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Nama Pengguna",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  border: OutlineInputBorder(),
                ),
                obscureText: _obscurePassword,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signUp, 
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
        ),
    );
  }
}