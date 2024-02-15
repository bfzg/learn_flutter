import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/utils/colors.dart';
import 'package:learn_flutter/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon; //final 声明一个只能被赋值一次的变量，赋值后不能修改。
  final String text;
  final Color iconColor;

  const IconAndText({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          color: AppColors.textColor,
        )
      ],
    );
  }
}
