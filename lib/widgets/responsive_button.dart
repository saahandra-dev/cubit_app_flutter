import 'package:cubit_app/misc/colors.dart';
import 'package:flutter/material.dart';

class ResponsiveBtn extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveBtn({ Key? key, this.isResponsive = false, this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('img/button-one.png')
        ],
      ),
    );
  }
}