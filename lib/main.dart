import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static var image = [
    'asset/g_image/india_chennai_flower_market.png',
    'asset/g_image/india_tanjore_bronze_works.png',
    'asset/g_image/india_tanjore_market_merchant.png',
    'asset/g_image/india_tanjore_thanjavur_temple.png',
    'asset/g_image/india_tanjore_thanjavur_temple_carvings.png',
    'asset/g_image/india_pondicherry_salt_farm.png',
    'asset/g_image/india_chennai_highway.png',
    'asset/g_image/india_chettinad_silk_maker.png',
    'asset/g_image/india_chettinad_produce.png',
    'asset/g_image/india_tanjore_market_technology.png',
    'asset/g_image/india_pondicherry_beach.png',
    'asset/g_image/india_pondicherry_fisherman.png',
  ];

  static var title = [
    'Chennai',
    'Tanjore',
    'Tanjore',
    'Tanjore',
    'Tanjore',
    'Pondicherry',
    'Chennai',
    'Chettinad',
    'Chettinad',
    'Tanjore',
    'Pondicherry',
    'Pondicherry',
  ];

  static var subtitle = [
    'Flower Market',
    'Bronze Works',
    'Market',
    'Thanjavur Temple',
    'Thanjavur Temple',
    'Salt Farm',
    'Scooters',
    'Silk Maker',
    'Lunch Prep',
    'Market',
    'Beach',
    'Fisherman',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 236, 207),
        appBar: AppBar(
          title: Text('Grid View',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black,
          backgroundColor: Colors.amberAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ), itemBuilder: (context, index) {
            return make_container(index);
          },itemCount: image.length,),
        ),
      ),
    );
  }

}
