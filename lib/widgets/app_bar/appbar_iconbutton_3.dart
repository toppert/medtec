import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton3 extends StatelessWidget {
  AppbarIconbutton3({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: getSize(30),
          width: getSize(30),
          padding: getPadding(
            all: 7,
          ),
          decoration: IconButtonStyleHelper.fillPrimaryTL15,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
