
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/theming/colors.dart';
import 'package:zed_studio_app/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font30BlackBold = TextStyle(
      fontSize: 30.sp,
      color: ColorManager.black,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font16DarkGrayregular = TextStyle(
      fontSize: 16.sp,
      color: ColorManager.darkGray,
      fontWeight: FontWeightHelper.regular); 
        static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      color: ColorManager.white,
      fontWeight: FontWeightHelper.semiBold);  
}