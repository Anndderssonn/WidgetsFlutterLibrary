import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <SlideInfo>[
  SlideInfo(
    title: 'Find your favorite food',
    caption:
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.',
    imageUrl: 'assets/images/1.png',
  ),
  SlideInfo(
    title: 'Fast delivery',
    caption:
        'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.',
    imageUrl: 'assets/images/2.png',
  ),
  SlideInfo(
    title: 'Enjoy your meal',
    caption:
        'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            children:
                slides
                    .map(
                      (slideInfo) => _CustomSlide(
                        title: slideInfo.title,
                        caption: slideInfo.caption,
                        imageUrl: slideInfo.imageUrl,
                      ),
                    )
                    .toList(),
          ),
          Positioned(
            right: 20,
            top: 60,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip'),
            ),
          ),
          endReached
              ? Positioned(
                bottom: 50,
                right: 30,
                child: FadeInRight(
                  from: 15,
                  delay: Duration(seconds: 1),
                  child: FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Start'),
                  ),
                ),
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _CustomSlide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _CustomSlide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}
