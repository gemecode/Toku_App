import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/custom_item_phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
        jpName: 'Kommst du?',
        enName: 'are you coming?',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Vergiss nicht zu abonnieren',
        enName: 'dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'Wie fühlst du dich?',
        enName: 'how are you feeling?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'Ich liebe Anime',
        enName: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'Ich liebe das Programmieren',
        enName: 'i love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Das Programmieren ist einfach',
        enName: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'Wie ist dein Name?',
        enName: 'what is your name?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Wohin gehst du?',
        enName: 'where are you going?',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: 'Ja, ich komme',
        enName: 'yes im coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEF6DB),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => CustomPhraseItem(
          item: phrases[index],
          color: Colors.blue,
        ),
      ),
    );
  }
}
