import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'bla bla bla bla bla bla lbla bla bla bla bla bla bla blabla bla bla bla bla bla lbla bla bla bla bla bla bla lbla bla bla bla bla bla bla bla  bla bla bla bla bla bla bla  '),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () => {}, child: const Text('Cancel')),
              TextButton(onPressed: () => {}, child: const Text('Ok'))
            ],
          ),
        )
      ]),
    );
  }
}
