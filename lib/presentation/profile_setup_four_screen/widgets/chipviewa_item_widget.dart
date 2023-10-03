import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewaItemWidget extends StatelessWidget {
  const ChipviewaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 14.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "A+",
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 18.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.deepPurple50,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.secondaryContainer,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
