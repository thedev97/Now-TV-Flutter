import 'package:flutter/material.dart';
import 'package:now_tv_v1/theme/theme_helper.dart';

class NowTvTextFormField extends StatelessWidget {

  const NowTvTextFormField({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          labelStyle: theme.textTheme.titleSmall!.copyWith(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black45),
        ),
      ),
    );
  }
}
