

import 'package:flutter/material.dart';
import 'package:now_tv_v1/theme/theme_helper.dart';

class GPayAppBarTitle extends StatelessWidget {

  const GPayAppBarTitle(
      {super.key,
      required this.text1,
      required this.text2,
      this.margin,
      this.onTap});
  final String text1;
  final String text2;
  final EdgeInsetsGeometry? margin;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Row(
          children: <Widget>[
            Text(text1,
                style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer, fontSize: 22)),
            const SizedBox(width: 4),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(text2,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: Colors.white70, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
