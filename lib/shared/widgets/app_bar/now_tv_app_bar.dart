

import 'package:flutter/material.dart';
import 'package:now_tv_v1/theme/theme_helper.dart';

class NowTvAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NowTvAppBar(
      {super.key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions,
      this.width,
      this.isDefaultStyle});

  final double? height;
  final double? width;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool? isDefaultStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 70.0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.blue.withOpacity(0.2),
      flexibleSpace: isDefaultStyle == true ? _getDefaultStyle() : _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 20,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(width ?? 70.0, height ?? 70.0);

  Widget? _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 70,
          width: double.maxFinite,
          decoration: NowTvDecoration.appBarDecoration,
        );
      default:
        return null;
    }
  }

  Widget? _getDefaultStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 0,
          width: double.maxFinite,
          decoration: NowTvDecoration.normalDecoration,
        );
      default:
        return null;
    }
  }
}

enum Style { bgFill }
