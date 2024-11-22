import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            OutlinedButton.icon(
              icon: const Icon(Icons.date_range),
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  locale: const Locale("es"),
                  firstDate: DateTime(2024),
                  lastDate: DateTime(2024, 12, 31),
                );

                if (dateTime != null) {
                  print(DateFormat("dd/MM/yyyy").format(dateTime));
                }
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Bordes rectos
                ),
              ),
              label: const Text("Filtrar"),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: width,
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Center(
                      child: Text("Id"),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text("Fecha"),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text("Subtotal"),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text("IVA"),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text("Total"),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context) => _CustomDialog(),
                      );
                    },
                    cells: const [
                      DataCell(
                        Text("1"),
                      ),
                      DataCell(
                        Text("09/11/2024"),
                      ),
                      DataCell(
                        Text("200"),
                      ),
                      DataCell(
                        Text("32"),
                      ),
                      DataCell(
                        Text("232"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Productos de la venta #1"),
      content: DataTable(
        columns: const [
          DataColumn(
            label: Center(
              child: Text("Producto"),
            ),
          ),
          DataColumn(
            label: Center(
              child: Text("Precio"),
            ),
          ),
          DataColumn(
            label: Center(
              child: Text("Cantidad"),
            ),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text("Botella"),
                ),
              ),
              DataCell(
                Center(
                  child: Text("30"),
                ),
              ),
              DataCell(
                Center(
                  child: Text("2"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
