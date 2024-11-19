import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tienda/ui/pages/pages.dart';

part 'screens.g.dart';

@riverpod
class Screens extends _$Screens {
  final List<Widget> _screens = [
    const HomePage(),
    const PosPage(),
    const ProductsPage(),
    const SalesPage()
  ];

  @override
  int build() => 0;

  void changeScreen(int option) {
    state = option;
  }

  Widget getScreen() {
    return _screens[state];
  }

  int getIndex() {
    return state;
  }
}
