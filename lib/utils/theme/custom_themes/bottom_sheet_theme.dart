import 'package:flutter/material.dart';

class ZiveBottomSheetTheme{
  ZiveBottomSheetTheme._();

  // light mode
  static BottomSheetThemeData lightbottomSheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );

  //dark mode
  static BottomSheetThemeData darkbottomSheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );

 

}