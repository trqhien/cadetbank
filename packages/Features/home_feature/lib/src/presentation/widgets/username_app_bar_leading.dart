import 'package:coreui/coreui.dart';
import 'package:flutter/material.dart';

class UsernameAppBarLeading extends StatelessWidget {
  const UsernameAppBarLeading({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              username, 
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.w700)
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: CustomColors.primaryGreenColor,
            size: 28,
          )
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed("/profile");
      },
    );
  }
}