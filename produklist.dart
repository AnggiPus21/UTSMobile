import 'package:flutter/material.dart';
import './detailproduk.dart';

class ProdukList extends StatefulWidget {
  @override
  _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST PRODUK")
      ),

      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Paracetamol",
                  description: "Ini adalah obat yang biasanya digunakan untuk penurun demam",
                  // price: 1000,
                  image: "paracetamol.jpg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Paracetamol",
              description: "Ini adalah obat yang biasanya digunakan untuk penurun demam",
              // price: 1000,
              image: "paracetamol.jpg",
              star: 5,
            ),
          ),
          
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Laserin",
                  description: "Ini adalah obat yang digunakan untuk meredakan batuk",
                  // price: 1000,
                  image: "Laserin.jpg",
                  star: 4,
                ),
              ));
            },

            child: ProductBox(
              name: "Laserin",
              description: "Ini adalah obat yang digunakan untuk meredakan batuk",
              // price: 1000,
              image: "Laserin.jpg",
              star: 4,
            ),
          ),


          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Bodrex",
                  description: "Ini adalah obat yang biasanya digunakan untuk meredakan FLU",
                  // price: 1000,
                  image: "Bodrex.jpg",
                  star: 1,
                ),
              ));
            },

            child: ProductBox(
              name: "Bodrex",
              description: "Ini adalah obat yang biasanya digunakan untuk meredakan FLU",
              // price: 1000,
              image: "Bodrex.jpg",
              star: 1,
            ),
          ),

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Betadine",
                  description: "Ini adalah obat ini biasanya digunakan untuk meredakan luka",
                  // price: 1000,
                  image: "Betadine.jpg",
                  star: 4,
                ),
              ));
            },

            child: ProductBox(
              name: "Betadine",
              description: "Ini adalah obat ini biasanya digunakan untuk meredakan luka",
              // price: 1000,
              image: "Betadine.jpg",
              star: 4,
            ),
          ),

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Antimo",
                  description: "Ini adalah obat yang biasanya digunakan untuk mengatasi mual",
                  // price: 1000,
                  image: "Antimo.jpeg",
                  star: 3,
                ),
              ));
            },

            child: ProductBox(
              name: "Antimo",
              description: "Ini adalah obat yang biasanya digunakan untuk mengatasi mual",
              // price: 1000,
              image: "Antimo.jpeg",
              star: 3,
            ),
          ),

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Antibiotik",
                  description: "Ini adalah obat yang digunakan untuk mengatasi bakteri",
                  // price: 1000,
                  image: "Antibiotik.jpg",
                  star: 2,
                ),
              ));
            },

            child: ProductBox(
              name: "Antibiotik",
              description: "Ini adalah obat yang digunakan untuk mengatasi bakteri",
              // price: 1000,
              image: "Antibiotik.jpg",
              star: 2,
            ),
          ),
        ],
      )
    );
  }
}

class ProductBox extends  StatelessWidget{
  ProductBox({Key key, this.name, this.description, this.price, this.image, this.star}): super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + image, width: 50,),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text(
                      "Price: " + this.price.toString(),
                      style: TextStyle(color: Colors.red),
                    ),

                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.orange),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}