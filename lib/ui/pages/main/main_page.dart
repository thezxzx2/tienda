import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda/ui/providers/screens.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Observar el índice actual del provider.
    final currentIndex = ref.watch(screensProvider);

    // Obtener el widget correspondiente al índice actual.
    final currentScreen = ref.read(screensProvider.notifier).getScreen();

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            onDestinationSelected: (int index) {
              ref.read(screensProvider.notifier).changeScreen(index);
            },
            destinations: [
              _navigationRailDestinationOption(
                  icon: Icons.home, text: "HomeScreen"),
              _navigationRailDestinationOption(
                  icon: Icons.point_of_sale, text: "PosScreen"),
              _navigationRailDestinationOption(
                  icon: Icons.inventory_sharp, text: "ProductsScreen"),
              _navigationRailDestinationOption(
                  icon: Icons.bar_chart, text: "SalesPage"),
            ],
            selectedIndex: currentIndex,
          ),
          Expanded(
            child: currentScreen,
          )
        ],
      ),
    );
  }

  NavigationRailDestination _navigationRailDestinationOption(
      {required IconData icon, required String text}) {
    return NavigationRailDestination(
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
