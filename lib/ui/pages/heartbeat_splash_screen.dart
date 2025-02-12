import 'package:doe_vida_app/config/app_config.dart';
import 'package:doe_vida_app/ui/pages/home.dart';
import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeartbeatSplashScreen extends StatefulWidget {
  const HeartbeatSplashScreen({super.key});

  @override
  State<HeartbeatSplashScreen> createState() => _HeartbeatSplashScreenState();
}

class _HeartbeatSplashScreenState extends State<HeartbeatSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _heartbeatAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    )..repeat(reverse: true);

    _heartbeatAnimation = Tween<double>(begin: 0.9, end: 1.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _loadConfigs();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppThemes.lightTheme,
      home: Scaffold(
        body: Center(
          child: AnimatedBuilder(
            animation: _heartbeatAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: _heartbeatAnimation.value,
                child: SvgPicture.asset(
                  'assets/images/coracao.svg',
                  width: 200,
                  height: 200,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _loadConfigs() async {
    await AppConfig.start();
    Future.delayed(Duration(seconds: 3), () {
      runApp(Home());
    });
  }
}
