import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title, 
    this.caption, 
    this.imageUrl
  );

}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Ipsum dolor fugiat dolor minim commodo reprehenderit excepteur.','assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Qui ea aute laboris magna laboris pariatur cupidatat ex.','assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Aliqua nisi anim non sint cillum enim cillum duis quis dolore qui.','assets/images/3.png'),
];


class AppTutorialScreen extends StatelessWidget {
  
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title: slideData.title, 
            caption: slideData.caption, 
            imageUrl: slideData.imageUrl
          )
        ).toList()
      ),
      
    );
  }
}


class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl
});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}