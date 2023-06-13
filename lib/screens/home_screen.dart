import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ordering_app/provider/dark_theme_provider.dart';
import 'package:ordering_app/services/utils.dart';
import 'package:ordering_app/widgets/best_seller_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final List<String> _offerImages = [
    'assets/images/offers/zamjy1.jpg',
    'assets/images/offers/zamjy2.jpg',
    'assets/images/offers/zamjy3.jpg',
    'assets/images/offers/zamjy4.jpg',
    'assets/images/offers/zamjy5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = utils.getTheme;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height *0.33,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return Image.asset(_offerImages[index],fit: BoxFit.fill,);
                },
                autoplay: true,
                itemCount: _offerImages.length,
                pagination: const SwiperPagination(
                  alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(color: Colors.white,activeColor: Colors.red)),
               // control: const SwiperControl(color: Colors.amber),
              ),
          ),
          BestSellerWidget(),
        ],
      ),
    );
  }
}
