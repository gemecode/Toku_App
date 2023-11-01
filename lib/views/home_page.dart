import 'package:flutter/material.dart';
import 'package:toku_app/models/category_model.dart';
import 'package:toku_app/widgets/custom_category.dart';
import 'package:toku_app/views/colors_page.dart';
import 'package:toku_app/views/family_members_page.dart';
import 'package:toku_app/views/numbers_page.dart';
import 'package:toku_app/views/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<CategoryModel> categoryModels = const [
    CategoryModel(color: Colors.orange, name: 'Numbers', screen: NumbersPage()),
    CategoryModel(
        color: Colors.green,
        name: 'Family Members',
        screen: FamilyMembersPage()),
    CategoryModel(color: Colors.purple, name: 'Colors', screen: ColorsPage()),
    CategoryModel(color: Colors.blue, name: 'Phrases', screen: PhrasesPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
          children: categoryModels
              .map((e) => CustomCategory(categoryModel: e))
              .toList()),
    );
  }
}
