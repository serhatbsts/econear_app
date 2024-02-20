import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  final String svgImg;
  final String title;
  final VoidCallback press;

  const CategoryCard({
    Key? key,
    required this.svgImg,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: Colors.grey,
          ),
        ],
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                Image.asset(svgImg,
                width: 60,
                height: 60,),
                Spacer(),
                Text(title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
