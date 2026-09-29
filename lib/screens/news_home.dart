import 'package:flutter/material.dart';

import '../data/news_data.dart';

import '../widgets/news_card.dart';


class NewsHome extends StatelessWidget {
  const NewsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Новости',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: news.length,

        itemBuilder: (context, index) {
          final item = news[index];

          return NewsCard(
            title: item['title']!,
            subtitle: item['subtitle']!,
            image: item['image']!,
          );
        },
      ),
    );
  }
}
