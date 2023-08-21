import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

enum AppBarType {
  modal,
  push
}

class CadetBankAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? title;
  // final Color? backgroundColor;
  final String? iconAsset;
  final Color? iconColor;
  // final double? iconWidth;
  // final double? iconHeight;
  // final VoidCallback? dismissAction;
  final bool hideBackButton;
  // final double? elevation;
  final ShapeBorder? shape;
  final AppBarType type;

  const CadetBankAppBar({
    Key? key,
    required this.type,
    this.title,
    // this.backgroundColor,
    this.iconAsset,
    // this.iconWidth,
    // this.iconHeight,
    this.iconColor,
    // this.dismissAction,
    this.hideBackButton = false,
    // this.elevation,
    this.shape,
  }) : super(key: key);

  factory CadetBankAppBar.modalStyle() => const CadetBankAppBar(
    type: AppBarType.modal,
    iconAsset: "assets/icons/close.png",
    // iconHeight: 18,
    // iconWidth: 18,
  );
                // onBackButtonPressed: () =>
                    // ReopenHomeScreenUtil.closeAndResetFullScreen(context),
  

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CadetBankAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: widget.shape,
      title: widget.title,
      leading: Visibility(
        visible: !widget.hideBackButton,
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: IconButton(
            icon: Image.asset(
              "assets/icons/close.png",
              width: 18,
              height: 18,
              fit: BoxFit.cover,
            ),

            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              // if (widget.onBackButtonPressed != null) {
              //   widget.onBackButtonPressed!();
              // } else {
              //   Navigator.of(context).pop();
              // }
              switch (widget.type) {
                case AppBarType.modal:
                  GoRouter.of(context).pop();
                  break;
                case AppBarType.push:
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
