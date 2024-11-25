import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tienda/ui/components/dotted_line.dart';

class PosPage extends StatelessWidget {
  const PosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    const priceStyle = TextStyle(fontSize: 16);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width / 2,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                height: (size.height / 3) * 2.5,
                width: size.width / 2,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        // Aumnetar cantidad de productos
                        print("Elemento $index");
                      },
                      onLongPress: () {
                        // Eliminar producto
                        print("Elemento $index eliminado");
                      },
                      leading: Text("${index + 1}"),
                      title: const Text(
                        "Botella",
                        style: TextStyle(fontSize: 24),
                      ),
                      subtitle: Text("${(index + 1) * 2}"),
                    );
                  },
                ),
              ),
              SizedBox(
                width: size.width / 4,
                height: size.height / 1.5,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Subtotal"),
                      trailing: Text(
                        "\$106.50",
                        style: priceStyle,
                      ),
                    ),
                    const ListTile(
                      title: Text("IVA"),
                      subtitle: Text(
                        "16%",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Text(
                        "\$17.05",
                        style: priceStyle,
                      ),
                    ),
                    const ListTile(
                      title: Text("Subtotal"),
                      trailing: Text(
                        "\$106.50",
                        style: priceStyle,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: DottedLine(),
                    ),
                    const ListTile(
                      title: Text("Total"),
                      trailing: Text(
                        "\$123.55",
                        style: priceStyle,
                      ),
                    ),
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                print("Pagar");
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: const Icon(Icons.point_of_sale_rounded),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: const InputDecoration(
                                        hintText: "\$0.00"),
                                    textAlign: TextAlign.end,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'^\d*\.?\d*'))
                                    ],
                                  ),
                                  const Text("Cambio: \$0.00"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
