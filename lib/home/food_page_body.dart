import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/utils/colors.dart';

class FoodPageDody extends StatefulWidget {
  const FoodPageDody({super.key});

  @override
  State<FoodPageDody> createState() => _FoodPageDodyState();
}

class _FoodPageDodyState extends State<FoodPageDody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? AppColors.mainColor : AppColors.conColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/carousel.jpg"),
          )),
    );
  }
}
