// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(),
            TextButton(
              child: const Text("push"),
              onPressed: () {
                Navigator.of(context).pushNamed("/purple");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pop"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).pop()
                : null
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            TextButton(
              child: const Text("push"),
              onPressed: () { 
                Navigator.of(context).pushNamed("/pink");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pop"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).pop()
                : null
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class PinkPage extends StatelessWidget {
  const PinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            TextButton(
              child: const Text("push"),
              onPressed: () { 
                Navigator.of(context).pushNamed("/orange");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pushAndRemoveUntil 🔴"),
              onPressed: () { 
                Navigator.of(context).pushNamedAndRemoveUntil(
                  "/blue",
                  (route) => route.settings.name == "/red"
                );
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pop"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).pop()
                : null
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade800,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            TextButton(
              child: const Text("push"),
              onPressed: () { 
                Navigator.of(context).pushNamed("/yellow");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pushReplacement"),
              onPressed: () { 
                Navigator.of(context).pushReplacementNamed("/yellow");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pop"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).pop()
                : null
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade400,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            TextButton(
              child: const Text("push"),
              onPressed: () { 
                Navigator.of(context).pushNamed("/green");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pop"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).pop()
                : null
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            TextButton(
              child: const Text("push"),
              onPressed: () { 
                Navigator.of(context).pushNamed("/blue");
              }
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("popUntil 🟠"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).popUntil((route) => route.settings.name == "/orange")
                : null
            ),
            const SizedBox(height: 24),
            TextButton(
              child: const Text("pop"),
              onPressed: Navigator.of(context).canPop()
                ? () => Navigator.of(context).pop()
                : null
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class BluePage extends StatelessWidget {
  const BluePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: TextButton(
          child: const Text("pop"),
          onPressed: Navigator.of(context).canPop()
            ? () => Navigator.of(context).pop()
            : null
        ),
      ),
    );
  }
}
