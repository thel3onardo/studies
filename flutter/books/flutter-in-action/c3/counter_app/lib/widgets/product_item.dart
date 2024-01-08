import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price});

  final String imageUrl, name;
  final double price;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int number = 1;

  void _increaseNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _increaseNumber,
        child: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(number.toString()),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.imageUrl),
                            height: 200.0,
                            width: 350.0,
                          )),
                      const SizedBox(height: 16.0),
                      Text(
                        widget.name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0),
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "R\$ ${widget.price.toString()}",
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0),
                          ),
                          const Text("5.0"),
                        ],
                      )
                    ]))));
  }
}
