import 'package:flutter/material.dart';
import 'package:ordering_app/widgets/text_widget.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key, required int salePrice, required int price, required String textPrice, required bool isOnSale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: FittedBox(child: Row(
        children: [
          TextWidget(
            text: '150\₱',
            color: Colors.green,
            textSize: 22,
        ),
          const SizedBox(width: 5,
          ),
          TextWidget(
            text: '150\₱',
            color: Colors.green,
            textSize: 22,

          ),

        ],
      ),),
    );
  }
}
