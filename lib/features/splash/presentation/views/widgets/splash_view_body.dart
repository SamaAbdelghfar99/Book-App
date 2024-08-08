import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationcontrol();
    navigateToHome();

  }

  void animationcontrol() {
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    slidingAnimation=Tween<Offset>(end:Offset.zero ,begin:Offset(0, 2) ).animate(animationController);
    animationController.forward();
  }
  void navigateToHome(){
    Future.delayed(const Duration(seconds: 2), () {
      //Get.to(
      //      () => const HomeView(),
      //  transition: Transition.fade,
      //  duration: const Duration(milliseconds: 250),
      //);
      GoRouter.of(context).push('/homeView');
    },
    );
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/BOOKLY.png'),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child:  Text(
                  'Read Free Books',style: TextStyle(fontFamily: 'Sectra'),
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ],
    );
  }
}
