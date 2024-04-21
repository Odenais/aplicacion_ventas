import 'package:aplicacion_ventas/widgets/confirmation_purchase_popup.dart';
import 'package:aplicacion_ventas/widgets/container_button_motel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  List imagesList = [
    "images/image2.jpg",
    "images/image2.jpg",
    "images/image2.jpg",
  ];

  List productTitles = [
    "Pedido 1",
    "Pedido 2",
    "Pedido 3",
  ];

  List state = [
    "\Estado",
    "\Estado",
    "\Estado",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de pedidos"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar pedidos...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      child: ListView.builder(
                        itemCount: imagesList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imagesList[index],
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productTitles[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Lorem ipsum dolor",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      state[index],
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 1),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
