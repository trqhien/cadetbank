import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppBarType {
  modal,
  push
}

class CadetBankAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? title;
  // final Color? backgroundColor;
  final String iconAsset;
  // final Color? iconColor;
  // final double? iconWidth;
  // final double? iconHeight;
  // final VoidCallback? dismissAction;
  final bool hideBackButton;
  final List<Widget>? actions;
  final AppBarType type;

  const CadetBankAppBar._({
    Key? key,
    required this.type,
    this.title,
    // this.backgroundColor,
    this.iconAsset = "assets/icons/Left.png",
    // this.iconWidth,
    // this.iconHeight,
    // this.iconColor,
    // this.dismissAction,
    this.hideBackButton = false,
    this.actions
  }) : super(key: key);

  factory CadetBankAppBar.modalStyle() => const CadetBankAppBar._(
    type: AppBarType.modal,
    iconAsset: "assets/icons/close.png",
  );

  factory CadetBankAppBar.pushStyle({List<Widget>? actions}) => CadetBankAppBar._(
    type: AppBarType.push,
    iconAsset: "assets/icons/Left.png",
    actions: actions,
  );

  factory CadetBankAppBar.empty() => const CadetBankAppBar._(
    type: AppBarType.push,
    hideBackButton: true,
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CadetBankAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title,
      elevation: 0,
      backgroundColor: CustomColors.primaryWhiteColor,
      leading: Visibility(
        visible: !widget.hideBackButton,
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: IconButton(
            icon: Image.asset(
              widget.iconAsset,
              width: 18,
              height: 18,
              fit: BoxFit.cover,
            ),

            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: widget.hideBackButton
              ? null
              : () {
                  switch (widget.type) {
                    case AppBarType.modal:
                      // GoRouter.of(context).pop();
                      Navigator.of(context).pop();
                      break;
                    case AppBarType.push:
                      Navigator.of(context).pop();
                      break;
                  }
                },
          ),
        ),
      ),
      actions: widget.actions
    );
  }
}
