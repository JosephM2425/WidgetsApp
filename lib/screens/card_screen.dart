import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://anime.international/wp-content/uploads/2021/07/HOW-OLD-IS-AQUA-FROM-KONOSUBA.jpg',
              titleCard: 'Aqua',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2020/10/Megumin-cosplay.jpg?resize=1200%2C720&quality=80&ssl=1',
              titleCard: 'Megumin',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://miro.medium.com/max/1400/1*k-izX71cJ3fFtRajOc2NJQ.png',
              titleCard: 'Kazuma',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://i.pinimg.com/originals/ed/a5/4c/eda54cf41b5d91eee112e56519af01e6.jpg',
            ),
          ],
        ));
  }
}
