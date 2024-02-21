import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/colors.dart';
import 'package:learn_flutter/widgets/big_text.dart';
import 'package:learn_flutter/widgets/icon_and_text.dart';
import 'package:learn_flutter/widgets/small_text.dart';

class FoodPageDody extends StatefulWidget {
  const FoodPageDody({super.key});

  @override
  State<FoodPageDody> createState() => _FoodPageDodyState();
}

class _FoodPageDodyState extends State<FoodPageDody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;
  double _scaledFactor = 0.8;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 330,
          margin: EdgeInsets.only(left: 5, right: 5),
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();  //Matrix4 是提供二维三维变换的 identity 返回一个单位矩阵，即没有任何变换的矩阵。
    print("identity >>>>>> "+ matrix.toString());
    if(index == _currPageValue.floor()){  //floor() 用于浮点数向下舍入到最接近的整数
      var currScale = 1 - (_currPageValue - 1)*(1-_scaledFactor);
    }


    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? AppColors.mainColor : AppColors.conColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/carousel.jpg"),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            margin: EdgeInsets.only(left: 30,right: 30,bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star,color: AppColors.mainColor,size: 15,)),
                      ),
                      SizedBox(width:10,),
                      SmallText(text: '4.5'),
                      SizedBox(width: 10,),
                      SmallText(text: "1287"),
                      SizedBox(width: 10,),
                      SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndText(icon: Icons.circle_sharp, text: "Normal", iconColor: AppColors.iconColor1,),
                      IconAndText(icon: Icons.location_on, text: "1.7KM", iconColor: AppColors.mainColor,),
                      IconAndText(icon: Icons.access_time_rounded, text: "32min", iconColor: AppColors.iconColor2,),
                    ],
                  )
                ],
              ),
            ),
          )
        )
      ],
    );
  }
}
