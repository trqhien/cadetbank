import 'package:flutter/material.dart';

class LoaderTransparent extends StatelessWidget {
  final Color colorValue;
  const LoaderTransparent({
    this.colorValue = Colors.grey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(
            height: 60.0,
            width: 60.0,
            child:
                //Image.asset('assets/images/loader.gif',fit: BoxFit.fill,) // use you custom loader or default loader
                CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    strokeWidth: 5.0)));
  }
}
