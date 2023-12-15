import 'package:coreui/coreui.dart';
import 'package:flutter/material.dart';

class CreateUsernamePrompt extends StatelessWidget {
  const CreateUsernamePrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CustomColors.pink25Color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create your username",
                  style: Theme.of(context).textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Text(
                  "Easily send and receive money with your own personalized username. Hurry- usernames are first come, first served!",
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyMedium!
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  child: Text(
                    "Get started",
                    style: Theme.of(context).textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700, color: CustomColors.primaryGreenColor),
                  ),
                  onTap: () => Navigator.of(context).pushNamed("/profile/create-username"), 
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/AvatarWith@Sign.png",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ],
      )
    );
  }
}