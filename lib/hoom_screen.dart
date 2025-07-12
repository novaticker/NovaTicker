import 'package:flutter/material.dart';
import 'news_fetcher.dart';
import 'gpt_summarizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🚀 급등주 호재 알림'),
      ),
      body: FutureBuilder<List<String>>(
        future: fetchStockNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('오류 발생: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('데이터 없음'));
          }

          final newsList = snapshot.data!;
          final summaries = summarizeNews(newsList);

          return ListView.builder(
            itemCount: summaries.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(summaries[index]),
              );
            },
          );
        },
      ),
    );
  }
}
