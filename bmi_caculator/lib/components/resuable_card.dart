import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // // key 用在需要追蹤的widget 例如動畫中 Widget
  // const ReusableCard({
  //   Key? key,
  // }) : super(key: key);
  ReusableCard({required this.colour, this.cardChild, this.onPress});
  final Color? colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
