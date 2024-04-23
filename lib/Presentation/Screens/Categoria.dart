import 'package:aplicacion_ventas/Presentation/Screens/shopping_list_screen.dart';
import 'package:aplicacion_ventas/screens/cart_screen.dart';
import 'package:aplicacion_ventas/screens/user_data.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:typed_data';



class pantallaInicial extends StatelessWidget {
  //pantallaInicial({required List listaProduc, required List listaImagenes, required List listaPrecios});

  //final List<List<String>> matriz;

  /*final List<String> imagenesCategorias;



  final List<String> imagenesProductos;
  final List<String> nombreProductos;
  final List<String> preciosProductos;
  final List<String> reviews;*/

  /*
  pantallaInicial({

    required this.matriz,

  });*/



  String nombreCategoria = "Variado";
  pantallaInicial({required this.nombreCategoria});

  List<String> imagenesCategorias = ["assets/productos/Camisa.jpg","assets/productos/Pantalon.jpg"
    ,"assets/productos/Blusa.jpg","assets/productos/Falda.jpg",];

  List<String> imagenesProductos = ["assets/productos/Pantalon.jpg","assets/productos/Pantalon.jpg"
    ,"assets/productos/Pantalon.jpg","assets/productos/Pantalon.jpg","assets/productos/Pantalon.jpg"];

  List nombreProductos = ["Camisa","Pantalon","Blusa","Falda","Camisa Azul"];

  List preciosProductos = ["\$50.00 MXN","\$50.00 MXN","\$50.00 MXN","\$50.00 MXN","\$100.00 MXN"];

  List reviews = ["54","54","54","54","100"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        /*leading: PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Icon(Icons.list_alt),
                  SizedBox(width: 8),
                  Text('Lista de pedidos'),
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 8),
                  Text('Notificaciones'),
                ],
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 8),
                  Text('Pedidos'),
                ],
              ),
            ),
          ],
          onSelected: (value) {

            switch (value) {
              case 1:
                print('Inicio seleccionado');
                break;
              case 2:
                print('Perfil seleccionado');
                break;
              case 3:
                print('Configuración seleccionada');
                break;
            }
          },
        ),*/
        title: GestureDetector(
          onTap: () {
            print("dsadsa");
            List<List<int>> matriz = [
              [1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]
            ];

            // Acceder a un elemento de la matriz
            int elemento = matriz[1][2]; // Segunda fila, tercer elemento
            print(elemento); // Salida: 6
          },
          child: Image.asset(
            'assets/icons/logo1.jpg',
            height: 30,
          ),
        ),
        actions: [

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());

            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),

          IconButton(

            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserDataScreen()));
            },
          ),
        ],
      ),


      body:
      Container(


        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //SizedBox(height: 20,),

                  Column(
                    children: [
                      // Línea
                      Divider(
                        color: Colors.black,
                        thickness: 1.0, // Grosor de la línea
                      ),

                      // Texto
                      Text(
                        nombreCategoria,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),



                  ClipRRect(

                    //borderRadius: BorderRadius.circular(10),


                    child: GridView.builder(
                        itemCount: nombreProductos.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 2,
                        ), itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingList()));

                          //Navigator.push(context, MaterialPageRoute(builder: (context) => principalPedidos()));
                          //código para mostrar la pantalla de producto
                          print("Prueba221312");
                        },
                        child: Container(

                          margin: EdgeInsets.all(10),
                          //margin: EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                //height: 200,

                                child: Column(
                                  children: [


                                    //Imagen del producto

                                    Stack(

                                      children: [
                                        InkWell(

                                          onTap: () {},
                                          child: ClipRRect(

                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10)),
                                            child: Container(
                                              color: Color(0xFFF0F0F0),
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                  imagenesProductos[index]),
                                            ),

                                          ),
                                        ),

                                      ],

                                    ),


                                    //Información del producto
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              // Alinear el texto a la izquierda
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      nombreProductos[index],
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                Row(
                                                  children: [
                                                    /*Icon(Icons.star, color: Colors.amber, size: 15,),
                                                        Text(
                                                          reviews[index],
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10,),*/
                                                    Text(
                                                      preciosProductos[index],
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            // Este widget ocupa todo el espacio disponible
                                            Column(
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Center(
                                                      child: Icon(
                                                        Icons
                                                            .add_shopping_cart_sharp,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                    ),
                                  ],
                                ),

                              ),


                              //SizedBox(height: 10,),


                            ],
                          ),
                        ),
                      );
                    }),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),


    );
  }

  Widget _categorias(){
    return Container(
      width: double.infinity,
      height: 100.0,

      child: Swiper(
        viewportFraction: 0.3333,
        scale: 0.9,
        itemBuilder: (BuildContext context,int index){
          return
            GestureDetector(
                onTap: (){
                  print("aasd12");
                },
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [
                    Image.asset(imagenesCategorias[index],fit: BoxFit.fitHeight,width: 100,height: 100,),

                  ],
                ),
              ),
            );
          //return Image.asset(imagenesCategorias[index],fit: BoxFit.cover,);
        },
        itemCount: imagenesCategorias.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}



class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
      // Agrega el botón o icono deseado aquí
      IconButton(
        icon: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          // Acción cuando se presiona el botón de agregar
          print('Se presionó el botón de agregar');
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, 'null');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}

class Producto {
  final String nombre;
  final String precio;
  final String imagenUrl;

  Producto({required this.nombre, required this.precio, required this.imagenUrl});
}




