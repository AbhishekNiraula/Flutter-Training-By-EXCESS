import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>(); // ✅ Form key
  final TextEditingController _rollController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Diddys party0")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form( // ✅ Wrap your fields in Form
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to party",
                style: TextStyle(fontSize: 25, color: Colors.teal),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _rollController,
                decoration: InputDecoration(
                  hintText: "Enter your college roll.no",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your roll number';
                  }
                  if (!RegExp(r'^\d+$').hasMatch(value)) {
                    return 'Only numbers allowed';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Roll No: ${_rollController.text} submitted!")),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
