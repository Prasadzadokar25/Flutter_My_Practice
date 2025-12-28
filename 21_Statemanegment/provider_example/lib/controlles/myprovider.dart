import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:provider/provider.dart";
import "package:provider_example/models/productdetails.dart";

import "../view/productdetailsview.dart";

class MyProvider extends StatelessWidget {
  const MyProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) {
            return ProductDetailsModel(
              url:
                  "https://www.91-cdn.com/hub/wp-content/uploads/2023/07/Boat-Alpha.jpg",
              name: "Boat earbudes",
              price: 1500.0,
              isFavarate: false,
              contity: 0,
            );
          }),
          ChangeNotifierProvider(create: (context) {
            return ProductList(productlist: []);
          })
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ProductDetailsView(),
        ));
  }
}
