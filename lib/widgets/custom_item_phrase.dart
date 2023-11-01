import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/custom_item_info.dart';

class CustomPhraseItem extends StatelessWidget {
  const CustomPhraseItem({super.key, required this.color, required this.item});

  final Color color;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: CustomItemInfo(
        item: item,
      ),
    );
  }
}
