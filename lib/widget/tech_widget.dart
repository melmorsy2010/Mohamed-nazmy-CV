import 'package:flutter/material.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/configs/app_typography.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Row(
          children: [
            Icon(
              Icons.play_arrow,
              color: AppTheme.c!.primary,
              size: AppDimensions.normalize(6),
            ),
            Text(
              " Customer Service ",
              style: AppText.l1b,
            )
          ],
    ),
        ],
      );
  }
}
