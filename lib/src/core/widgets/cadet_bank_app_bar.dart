import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

enum AppBarType {
  modal,
  push, 
  custom,
}

class CadetBankAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? title;
  // final Color? backgroundColor;
  final String? iconAsset;
  // final Color? iconColor;
  // final double? iconWidth;
  // final double? iconHeight;
  // final VoidCallback? dismissAction;
  final Widget? leading;
  final bool hidesLeadingComponent;
  final List<Widget>? actions;
  final AppBarType type;

  const CadetBankAppBar._({
    Key? key,
    required this.type,
    this.title,
    // this.backgroundColor,
    this.iconAsset, // = "assets/icons/Left.png",
    this.leading,
    // this.iconWidth,
    // this.iconHeight,
    // this.iconColor,
    // this.dismissAction,
    this.hidesLeadingComponent = false,
    this.actions
  }) : assert(iconAsset == null || leading == null, "`iconAsset` and `leading` cannot simultaneously be null" ),
  super(key: key);

  factory CadetBankAppBar.modalStyle() => const CadetBankAppBar._(
    type: AppBarType.modal,
    iconAsset: "assets/icons/close.png",
  );

  factory CadetBankAppBar.pushStyle({List<Widget>? actions}) => CadetBankAppBar._(
    type: AppBarType.push,
    iconAsset: "assets/icons/Left.png",
    actions: actions,
  );

  factory CadetBankAppBar.custom({
    required Widget leading, 
    List<Widget>? actions
  }) => CadetBankAppBar._(
    type: AppBarType.custom,
    leading: leading,
    actions: actions,
  );

  factory CadetBankAppBar.empty() => const CadetBankAppBar._(
    type: AppBarType.push,
    hidesLeadingComponent: true,
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CadetBankAppBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AppBar(
          title: widget.title,
          elevation: 0,
          backgroundColor: CustomColors.primaryWhiteColor,
          leadingWidth: !widget.hidesLeadingComponent && widget.leading != null && widget.title == null
            ? constraints.maxWidth * 0.6
            : null,
          leading: widget.hidesLeadingComponent
            ? null
            : Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: widget.leading ?? _AppBarLeftButton(iconAsset: widget.iconAsset ?? "assets/icons/Left.png")
                ),
              ),
          actions: widget.actions
        );
      }
    );
  }
}

class _AppBarLeftButton extends StatelessWidget {
  const _AppBarLeftButton({
    Key? key,
    required this.iconAsset
  }) : super(key: key);

  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        iconAsset,
        width: 18,
        height: 18,
        fit: BoxFit.cover,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}

