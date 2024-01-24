import 'package:flutter/material.dart';

class ResponsiveHelpers {
  //* This class helps us to make our platform responsive by providing us many useful functions.

  //* Functions to check & breakpoints checking for for different screens sizes (Mobile, Tablet, Desktop)
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 1024;
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1024;

  //* Returns true if the screen width is less than the given width
  static bool isWidthLessThan(BuildContext context, double width) => MediaQuery.of(context).size.width < width;

  //* Returns true if the screen height is less than the given height
  static bool isHeightLessThan(BuildContext context, double height) => MediaQuery.of(context).size.height < height;

  //* STATIC BREAKPOINTS of different screens sizes
  static double mobileBrakePoint = 600;
  static double tabletBrakePoint = 1024;
  static double desktopBrakePoint = 1440;

  // Return width
  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  // Return height
  static double height(BuildContext context) => MediaQuery.of(context).size.height;
}