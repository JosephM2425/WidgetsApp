import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slideEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                value: _sliderValue,
                //divisions: 5,
                min: 50,
                max: 500,
                activeColor: AppTheme.primary,
                onChanged: _slideEnable
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }
                    : null),
            // Checkbox(
            //     value: _slideEnable,
            //     onChanged: (value) {
            //       setState(() {
            //         _slideEnable = value ?? true;
            //       });
            //     }
            // ),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar slider'),
                value: _slideEnable,
                onChanged: (value) {
                  setState(() {
                    _slideEnable = value ?? true;
                  });
                }),
            // Switch(
            //   value: _slideEnable,
            //   onChanged: (value) {
            //     setState(() {
            //       _slideEnable = value;
            //     });
            //   }
            // ),
            SwitchListTile.adaptive(
                title: const Text('Activar Slider'),
                activeColor: AppTheme.primary,
                value: _slideEnable,
                onChanged: (value) {
                  setState(() {
                    _slideEnable = value;
                  });
                }),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://es.web.img3.acsta.net/newsv7/22/06/25/13/08/4911909.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
