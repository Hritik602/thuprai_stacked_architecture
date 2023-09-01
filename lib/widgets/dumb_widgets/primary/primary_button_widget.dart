// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    Key? key,
    this.onTap,
    this.buttonTitle,
  }) : super(key: key);
  final Function()? onTap;
  final String? buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 1.sw,
        height: 0.06.sh,
        decoration: BoxDecoration(
            color: const Color(0xFF6268AB),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(buttonTitle ?? "Button",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
