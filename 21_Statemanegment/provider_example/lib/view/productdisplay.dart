import "package:flutter/material.dart";
import "package:provider/provider.dart";

class ProductDisplay extends StatefulWidget {
  final productDetailsModel;

  const ProductDisplay({super.key, required this.productDetailsModel});

  @override
  State createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Consumer2(
            builder: (context, value1, value2, child) {
              return Image.network(
                widget.productDetailsModel.url,
              );
            },
          ),
          Consumer2(
            builder: (context, value1, value2, child) {
              return Text("Name : ${widget.productDetailsModel.name}");
            },
          ),
          Consumer2(
            builder: (context, value1, value2, child) {
              return Text("Price : ${widget.productDetailsModel.price}");
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    widget.productDetailsModel.increaseContity();
                    setState(() {});
                  },
                  icon: const Icon(Icons.add)),
              Consumer2(
                builder: (context, value1, value2, child) {
                  return Text(" ${widget.productDetailsModel.contity}");
                },
              ),
              IconButton(
                onPressed: () {
                  widget.productDetailsModel.decreaseContity();
                  setState(() {});
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
