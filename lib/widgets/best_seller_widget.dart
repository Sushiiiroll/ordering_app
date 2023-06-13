import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:ordering_app/services/utils.dart';
import 'package:ordering_app/widgets/text_widget.dart';

class BestSellerWidget extends StatefulWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  State<BestSellerWidget> createState() => _BestSellerWidgetState();
}

class _BestSellerWidgetState extends State<BestSellerWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    final theme = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Material(
      color: Theme.of(context).cardColor.withOpacity(0.9),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.network(
                'https://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
              // width: size.width*0.22,
              height: size.width*0.22,
                fit: BoxFit.fill,
              ),
                Column(children: [
                  TextWidget(
                    text: '1srv',
                    color: color,
                    textSize: 22,
                    isTitle:true,
                  ),
                  const SizedBox(height: 6,),
                  Row(children: [
                    GestureDetector(
                      onTap: (){},
                      child: Icon(
                        IconlyLight.bag2,
                        size: 22,
                      color:color,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('print heart button is pressed');
                      },
                      child: Icon(
                        IconlyLight.heart,
                        size: 22,
                        color:color,
                      ),
                    ),
                  ],)
                ],)
            ],
            ),
          ]),
        ),
      ),
    );
  }
}
