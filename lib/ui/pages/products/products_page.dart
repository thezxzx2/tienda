import 'package:flutter/material.dart';
import 'package:tienda/ui/components/products_list_item.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Barra de búsqueda
          const Row(
            children: [
              Expanded(
                child: TextField(),
              ),
              SizedBox(width: 15),
              _CustomButton("Filtrar", Icons.filter_list),
              SizedBox(width: 20),
              _CustomButton("Añadir", Icons.add),
              SizedBox(width: 80),
            ],
          ),
          const SizedBox(height: 20),
          // Productos disponibles
          Expanded(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: size.width,
                  child: const ProductsListItem(),
                ),
              ),
            ),
          ),
        ],
      ),
      // Contenido de los productos
    );
  }
}

class _CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const _CustomButton(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: Icon(icon),
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Bordes rectos
        ),
      ),
      label: Text(text),
    );
  }
}
