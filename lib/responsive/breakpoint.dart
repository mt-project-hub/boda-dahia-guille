import 'package:responsive_framework/responsive_framework.dart';

enum AppBreakpoint {
  mobile,
  tablet,
  smallDesktop,
  desktop,
  largeDesktop;

  static AppBreakpoint of(double width) {
    if (width < AppBreakpoint.mobile.end) {
      return AppBreakpoint.mobile;
    } else if (width < AppBreakpoint.tablet.end) {
      return AppBreakpoint.tablet;
    } else if (width < AppBreakpoint.smallDesktop.end) {
      return AppBreakpoint.smallDesktop;
    } else if (width < AppBreakpoint.desktop.end) {
      return AppBreakpoint.desktop;
    } else {
      return AppBreakpoint.largeDesktop;
    }
  }

  String get name => toString().split('.').last;

  Breakpoint get breakpoint => Breakpoint(start: start, end: end, name: name);

  ///start of the breakpoint
  double get start {
    switch (this) {
      case AppBreakpoint.mobile:
        return 0;
      case AppBreakpoint.tablet:
        return 451;
      case AppBreakpoint.smallDesktop:
        return 801;
      case AppBreakpoint.desktop:
        return 1158;
      case AppBreakpoint.largeDesktop:
        return 1921;
    }
  }

  ///end of the breakpoint
  double get end {
    switch (this) {
      case AppBreakpoint.mobile:
        return 450;
      case AppBreakpoint.tablet:
        return 800;
      case AppBreakpoint.smallDesktop:
        return 1157;
      case AppBreakpoint.desktop:
        return 1920;
      case AppBreakpoint.largeDesktop:
        return double.infinity;
    }
  }
}
