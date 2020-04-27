import 'package:flutter/material.dart';

class PageRoutes {
  static const int duration = 350;
  static const Curve easeForward = Curves.easeOut;
  static const Curve easeReverse = Curves.easeOut;

  static Route<T> fade<T>({
    @required RoutePageBuilder page,
    int transitionMilliseconds = duration
  }) => PageRouteBuilder<T>(
    transitionDuration: const Duration(milliseconds: duration),
    pageBuilder: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );


  static Route<T> slide<T>({
    @required RoutePageBuilder page,
    int transitionMilliseconds = duration,
    Offset startOffset = const Offset(1, 0),
    Curve forwardCurve = easeForward,
    Curve reverseCurve = easeReverse
  }) => PageRouteBuilder<T>(
      transitionDuration: const Duration(milliseconds: duration),
      pageBuilder: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child)
      => SlideTransition(
        position: Tween<Offset>(begin: startOffset, end: Offset(0, 0))
            .animate(CurvedAnimation(
            parent: animation,
            curve: (animation.status == AnimationStatus.reverse)
                ? reverseCurve
                : forwardCurve
        )
        ),
        child: child,
      )
  );

}