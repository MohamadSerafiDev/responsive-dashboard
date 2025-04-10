import 'package:flutter/material.dart';
import 'package:resposive_learn/api/api.dart';
import 'package:resposive_learn/views/first_screen_home.dart';

void main() async {
  // for (var i = 5245; i < 5556; i++) {
  //   dynamic res = await Api().get(
  //     url:
  //         'https://ipfs.io/ipfs/bafybeiespxwhrtbddcnm5qxyyes6hmyb43sis2jteoeexffpnn72sffxle/$i',
  //   );
  //   (res['attributes'][1]['value'] == 'Air' ||
  //               res['attributes'][4]['value'] == 'Vengeful' ||
  //               res['attributes'][4]['value'] == 'Barrel Sunglasses' ||
  //               res['attributes'][4]['value'] == 'Fierce' ||
  //               res['attributes'][4]['value'] == 'Beard' ||
  //               res['attributes'][4]['value'] == 'Death Mask' ||
  //               res['attributes'][4]['value'] == 'Blue Shades' ||
  //               res['attributes'][4]['value'] == 'Dark Shades' ||
  //               res['attributes'][4]['value'] == 'bushy Goatee' ||
  //               res['attributes'][4]['value'] == 'Mustache' ||
  //               res['attributes'][5]['value'] == 'Gothic Lolita' ||
  //               res['attributes'][5]['value'] == 'Gown' ||
  //               res['attributes'][5]['value'] == 'Maiden Gown' ||
  //               res['attributes'][5]['value'] == 'Red Casual Jacket' ||
  //               res['attributes'][5]['value'] == 'Steampunk Corset' ||
  //               res['attributes'][5]['value'] == 'Open Tshirt' ||
  //               res['attributes'][5]['value'] == 'Royal' ||
  //               res['attributes'][5]['value'] == 'Hero Suit' ||
  //               res['attributes'][5]['value'] == 'Royal White Dress' ||
  //               res['attributes'][5]['value'] == 'Armor' ||
  //               res['attributes'][5]['value'] == 'Heroine Armor' ||
  //               res['attributes'][5]['value'] == 'Casual Top' ||
  //               res['attributes'][5]['value'] == 'Robes Of Wisdom' ||
  //               res['attributes'][5]['value'] == 'Divine Armor' ||
  //               res['attributes'][7]['value'] == 'Bald Scars' ||
  //               res['attributes'][7]['value'] == 'Hair Clip' ||
  //               res['attributes'][7]['value'] == 'Space Buns' ||
  //               res['attributes'][7]['value'] == 'Messy Bun' ||
  //               res['attributes'][7]['value'] == 'Messy' ||
  //               res['attributes'][7]['value'] == 'Half Up Half Down' ||
  //               res['attributes'][7]['value'] == 'Spike Ponytail' ||
  //               res['attributes'][7]['value'] == 'High Ponitail' ||
  //               res['attributes'][7]['value'] == 'Beanie' ||
  //               res['attributes'][7]['value'] == 'Bald' ||
  //               res['attributes'][7]['value'] == 'Feathered' ||
  //               res['attributes'][7]['value'] == 'Long Flowing' ||
  //               res['attributes'][7]['value'] == 'Undercut' ||
  //               res['attributes'][7]['value'] == 'Hat' ||
  //               res['attributes'][7]['value'] == 'White' ||
  //               res['attributes'][7]['value'] == 'Twin Tails' ||
  //               res['attributes'][7]['value'] == 'Bun Clip' ||
  //               res['attributes'][7]['value'] == 'Elegant Curls' ||
  //               res['attributes'][7]['value'] == 'Ringlet Curls' ||
  //               res['attributes'][4]['value'] == 'Cigar') &&
  //           // res['attributes'][8]['value'] != 'None' &&
  //           res['attributes'][6]['value'] != 'None' &&
  //           res['attributes'][1]['value'] != 'None'
  //       ? print(
  //         '${res['name']}\n\n================ ${res['attributes']}=====================\n',
  //       )
  //       : print('${res['name']}\n');
  // }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreenHome(),
    );
  }
}
