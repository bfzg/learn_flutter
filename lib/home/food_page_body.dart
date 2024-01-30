import 'package:flutter/cupertino.dart';

class FoodPageDody extends StatefulWidget {
  const FoodPageDody({super.key});

  @override
  State<FoodPageDody> createState() => _FoodPageDodyState();
}

class _FoodPageDodyState extends State<FoodPageDody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(itemCount: 5,itemBuilder: (context,position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int index){
    return Container();
  }
}
