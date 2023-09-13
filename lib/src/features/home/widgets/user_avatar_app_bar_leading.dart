import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:flutter/material.dart';

class UserAvatarAppBarLeading extends StatelessWidget {
  const UserAvatarAppBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: CustomColors.secondaryGreenColor,
      child: IconButton(
        icon: Image.asset(
          "assets/icons/User-2.png",
          width: 16,
          height: 16,
          fit: BoxFit.cover,
          color: CustomColors.primaryGreenColor,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          Navigator.of(context).pushNamed("/profile");
        }
      ),
    );
  }
}