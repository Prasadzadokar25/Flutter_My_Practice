import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:provider/provider.dart";
import "package:provider_example/models/productdetails.dart";
import "package:provider_example/view/productdisplay.dart";

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Galary"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 212, 85),
      ),
      body: Center(child: Consumer<ProductDetailsModel>(
        builder: (context, value, child) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: Provider.of<ProductList>(context).productlist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDisplay(
                              productDetailsModel:
                                  Provider.of<ProductList>(context)
                                      .productlist[index],
                            );
                          },
                        ),
                      );
                    },
                    child: productCard(
                        productDetailsModel: Provider.of<ProductList>(context)
                            .productlist[index]),
                  );
                }),
          );
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showMyBottomShett();
        },
        shape: const StadiumBorder(),
        label: const Row(
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: Color.fromRGBO(14, 161, 125, 1),
              size: 40,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Add Product",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }

  Widget productCard({required ProductDetailsModel productDetailsModel}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 213, 236, 255),
        height: 80,
        width: 500,
        child: Consumer(
          builder: (context, value1, child) {
            return Row(
              children: [
                SizedBox(
                    height: 60, child: Image.network(productDetailsModel.url)),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [Text("Name : ${productDetailsModel.name}")],
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void showMyBottomShett() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Add",
                  style: TextStyle(fontSize: 16),
                ),
                Form(
                  // key: _taskKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getLabelForTextField(label: "Image URL"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        controller: imageController,
                        validator: (value) {
                          return null;
                        },
                        decoration: getInputDecorationForTextField(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      getLabelForTextField(label: "Name"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          return null;
                        },
                        //controller: titleController,
                        decoration: getInputDecorationForTextField(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      getLabelForTextField(label: "Price"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        controller: priceController,
                        validator: (value) {
                          return null;
                        },
                        //controller: titleController,
                        decoration: getInputDecorationForTextField(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 219, 57),
                  ),
                  onPressed: () {
                    String name = nameController.text.trim();
                    String url = imageController.text.trim();
                    double price = double.parse(priceController.text.trim());

                    Provider.of<ProductList>(listen: false, context).addProduct(
                        productDetailsModel: ProductDetailsModel(
                      name: name,
                      url: url,
                      price: price,
                      isFavarate: false,
                      contity: 0,
                    ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(9, 9, 9, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getLabelForTextField({required String label}) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(33, 33, 33, 1),
      ),
    );
  }

  InputDecoration getInputDecorationForTextField() {
    return const InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(33, 33, 33, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
    );
  }
}
