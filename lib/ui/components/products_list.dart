import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductsListItem extends StatelessWidget {
  const ProductsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Center(
              child: Text(
                'Imagen',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Center(
              child: Text(
                'Nombre',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Center(
              child: Text(
                'Código',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Center(
              child: Text(
                'Categoría',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Center(
              child: Text(
                'Stock',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Center(
              child: Text(
                'Precio',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(
          cells: <DataCell>[
            DataCell(
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  width: 50,
                  height: 50,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://w7.pngwing.com/pngs/728/915/png-transparent-mineral-water-bottles-mineral-water-bottles-mineral-water-pure-water-thumbnail.png",
                  ),
                ),
              ),
            ),
            const DataCell(Center(child: Text('Botella de agua'))),
            const DataCell(Center(child: Text('0303030303'))),
            const DataCell(Center(child: Text('Comestibles'))),
            const DataCell(
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.inventory_2_outlined, size: 25),
                    SizedBox(width: 25),
                    Text("20"),
                  ],
                ),
              ),
            ),
            const DataCell(
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.attach_money_rounded, size: 25),
                    SizedBox(width: 25),
                    Text("30"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );

    // return Container(
    //   width: width,
    //   height: 90,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.black, width: 1),
    //   ),
    //   margin: const EdgeInsets.only(right: 80),
    //   child: const Row(
    //     children: [],
    //   ),
    // );
  }
}
