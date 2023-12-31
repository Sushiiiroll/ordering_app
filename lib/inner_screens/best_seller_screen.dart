import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:ordering_app/services/utils.dart';
import 'package:ordering_app/widgets/best_seller_widget.dart';
import 'package:ordering_app/widgets/text_widget.dart';

class BestSellerScreen extends StatelessWidget {
  static const routeName = "/BestSellerScreen";
  const BestSellerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isEmpty = false;
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      appBar: AppBar(leading: InkWell(borderRadius: BorderRadius.circular(12),
      onTap: (){
        Navigator.pop(context);
      },
      child: Icon(IconlyLight.arrowLeft2,
      color:color,
      ),
      ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Best Sellers',
          color: color,
          textSize: 24.0,
          isTitle: true,
        ),
      ),
      body: _isEmpty?
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  'assets/images/box.png',
                ),
              ),
              Text(
                'No Best Seller products yet!,\nStay tuned',
      textAlign: TextAlign.center,
      style: TextStyle(
              color: color, fontSize: 30,fontWeight: FontWeight.w700),),
            ],
          ),
        ), ):GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        // crossAxisSpacing: 10,
        childAspectRatio: size.width / (size.height * 0.45),
        children: List.generate(16, (index) {
          return const BestSellerWidget();
        }),
      ),
    );
  }
}
