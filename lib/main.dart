import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Excercise',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Jeko',
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool shouldUseUsername = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Image.asset(height: 150.0, 'assets/images/NewMaya.png'),
              const Center(
                child: Text(
                  'Maya Cadetship!',
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(31, 166, 161, 161),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MayaTextField(
                      label: 'First Name',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    const SizedBox(height: 16.0),
                    if (shouldUseUsername)
                      const MayaTextField(
                        key: ValueKey('middleNameField'),
                        label: 'Middle Name',
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                    const SizedBox(height: 16.0),
                    const MayaTextField(
                      label: 'Last Name',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: shouldUseUsername,
                          onChanged: (value) => setState(() {
                            shouldUseUsername = !shouldUseUsername;
                          }),
                        ),
                        const Text('Show middle name'),
                      ],
                    ),
                    const MayaTextField(
                      label: 'Mobile Number',
                      prefixIcon: Icon(Icons.smartphone_outlined),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16.0),
                    const MayaTextField(
                      label: 'Password',
                      obscureText: true,
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  height: 57.0,
                  child: Center(
                      child: Text(
                    'Onboard 🚀',
                    style: TextStyle(fontSize: 18.0),
                  )),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MayaTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;

  const MayaTextField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.prefixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[800]),
        fillColor: Colors.white70,
      ),
    );
  }
}
