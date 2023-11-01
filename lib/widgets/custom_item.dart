import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/custom_item_info.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({required this.item, required this.color, super.key});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0XFFFFF6DC),
            child: Image.asset(item.image!),
          ),
          Expanded(
            child: CustomItemInfo(item: item),
          ),
        ],
      ),
    );
  }
}
