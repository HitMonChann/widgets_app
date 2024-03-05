import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Busca tu comida',
      caption: 'Aliquip non ipsum magna irure nulla Lorem consequat.',
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Entrega rápida',
      caption:
          'Sit ea tempor commodo culpa sint veniam esse laboris id duis est.',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Disfruta la comida',
      caption:
          'Id aliquip nostrud incididunt aute laboris ea ad pariatur adipisicing ad voluptate nulla voluptate id. ',
      imageUrl: 'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;
  int selectedpage = 0;

  @override
  void initState() {
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= slides.length - 1) {
        setState(() {
          endReached = true;
        });
      } else {
        setState(() {
          endReached = false;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(slideInfo: slideData))
                .toList(),
            onPageChanged: (page) {
              setState(() {
                selectedpage = page;
              });
            },
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text(
                'Saltar',
              ),
              onPressed: () => context.pop(),
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 70,
                  right: 50,
                  child: FadeInRight(
                    from: 15,
                    child: FilledButton(
                      child: const Text('Comenzar'),
                      onPressed: () => context.pop(),
                    ),
                  ),
                )
              : const SizedBox(),
          Positioned(
            bottom: 50,
            left: MediaQuery.of(context).size.width / 2 - (220),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: PageViewDotIndicator(
                  currentItem: selectedpage,
                  count: slides.length,
                  unselectedColor: Colors.grey,
                  selectedColor: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slideInfo;

  const _Slide({required this.slideInfo});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(slideInfo.imageUrl)),
            const SizedBox(
              height: 10,
            ),
            Text(
              slideInfo.title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              slideInfo.caption,
              textAlign: TextAlign.center,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
