import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ordering_app/services/utils.dart';
import 'package:ordering_app/widgets/heart_btn.dart';
import 'package:ordering_app/widgets/text_widget.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final _quantityTextController = TextEditingController();
  @override
  void initState(){
   _quantityTextController.text = '1';
    super.initState();
  }
  @override
  void dispose(){
    _quantityTextController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               decoration: BoxDecoration(
                 color: Theme.of(context).cardColor.withOpacity(0.3),
               borderRadius:BorderRadius.circular(12),
               ),
              child:  Row(
                children: [
                  Container(
                    height: size.width * 0.25,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: FancyShimmerImage(
                      imageUrl: 'https://spoonacular.com/cdn/ingredients_100x100/apple.jpg',

                      boxFit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    TextWidget(
                      text: 'Title',
                      color: color,
                      textSize: 20,
                      isTitle: true,
                    ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: size.width*0.3,
                        child: Row(
                          children: [
                            _quantityController(
                              fct: (){},
                              color: Colors.red,
                              icon: CupertinoIcons.minus,
                            ),
                            Flexible(
                              flex: 1,
                              child: TextField(
                                controller: _quantityTextController,
                                keyboardType: TextInputType.number,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(),),),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp('0-9'),
                                  ),
                                ],
                                onChanged: (v){
                                  setState(() {
                                    if(v.isEmpty){
                                      _quantityTextController.text = '1';
                                    }else{
                                      return;
                                    }
                                  });
                                },
                              ),
                            ),
                            _quantityController(
                              fct: (){},
                              color: Colors.green,
                              icon: CupertinoIcons.plus,
                            )
                        ],),
                      ),
                  ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(children: [
                      InkWell(
                        onTap: (){},
                        child: const Icon(
                        CupertinoIcons.cart_badge_minus,
                          color: Colors.red,
                          size:20,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const HeartBTN(),
                      TextWidget(
                        text: '\$17',
                        color: color,
                        textSize: 18,
                        maxLines: 1,
                      )
                    ],
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),
          ),
        ),
      ],),
    );
  }

  Widget _quantityController ({
    required Function fct,
    required IconData icon,
    required Color color,
  }){
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: (){
              fct();
              },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child:  Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
