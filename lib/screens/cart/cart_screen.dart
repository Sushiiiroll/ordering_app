import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:ordering_app/screens/cart/cart_widget.dart';
import 'package:ordering_app/services/utils.dart';
import 'package:ordering_app/widgets/text_widget.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/CartScreen';
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Cart(2)',
          color: color,
          isTitle: true,
          textSize: 22,
        ),
        actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(
              IconlyBroken.delete,
            color: color,
            ),),

      ],),
      body:Column(
        children: [
          _checkout(ctx: context),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, index){
              return CartWidget();
            }),
          ),
        ],
      ),
    );
  }

  Widget _checkout ({required BuildContext ctx}){
    final Color color = Utils(ctx).color;
    Size size = Utils(ctx).getScreenSize;
    return  SizedBox(
      width: double.infinity,
      height: size.height*0.1,
      //color: ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(children: [
          Material(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextWidget(
                  text: 'Order Now',
                  color: Colors.white,
                  textSize: 20,
                ),
              ),
            ),
          ),
          const Spacer(),
          FittedBox(
            child: TextWidget(
              text: 'Total \$500',
              color: color,
              textSize: 18,
              isTitle: true,
            ),
          ),
        ],),
      ),
    );
  }
}
