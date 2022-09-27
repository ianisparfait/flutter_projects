import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({ super.key });

  @override
  State<ShoppingList> createState() => _ShoppingState();
}

class _ShoppingState extends State<ShoppingList> {
  List<String> shopping = [];
  String input = "";

  void add() {
    setState(() {
      shopping.add(input);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return Container(
      color: const Color(0xFFFFE306),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Text(shopping[index]);
        }
      ),
    );
  }
}