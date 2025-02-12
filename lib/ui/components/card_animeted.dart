import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CardAnimeted extends StatefulWidget {
  final int index;
  final Widget child;
  final bool enabled;
  final int position;

  const CardAnimeted({
    super.key,
    required this.position,
    required this.index,
    required this.child,
    required this.enabled,
  });

  @override
  _CardAnimetedState createState() => _CardAnimetedState();
}

class _CardAnimetedState extends State<CardAnimeted> {
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: widget.enabled,
      child: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 5),
          height: widget.index == widget.position
              ? MediaQuery.sizeOf(context).height * 0.70
              : MediaQuery.sizeOf(context).height * 0.50,
          padding: EdgeInsets.all(24),
          duration: Duration(milliseconds: 1000),
          curve: Curves.linearToEaseOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: widget.index == widget.position
                ? AppThemes.lightTheme.primaryColorLight
                : AppThemes.lightTheme.primaryColorLight.withAlpha(215),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha((0.25 * 255).toInt()),
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(3, 3),
              )
            ],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
