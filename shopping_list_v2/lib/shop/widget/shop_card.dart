import 'package:flutter/material.dart';
import 'package:shopping_list_v2/shop/model/shop_helper.dart';
import 'package:shopping_list_v2/shop/model/shop_model.dart';

class ShopCard extends StatelessWidget {
  final ShopModel model;
  final int index;
  final Function(double val) onHeight;

  const ShopCard(
      {Key? key,
      required this.model,
      required this.index,
      required this.onHeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onHeight((context.size!.height) /
          (model.products.length / ShopHelper.gridColumnValue));
    });
    return Column(
      children: [
        const Divider(),
        Text("${model.categoryName} $index"),
        Card(
          child: buildGridViewProducts(index, model.products),
        ),
      ],
    );
  }

  GridView buildGridViewProducts(int index, List<Product> products) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: ShopHelper.gridColumnValue),
      itemBuilder: (context, index) {
        return Card(
          child: Text(products[index].name),
        );
      },
    );
  }
}
