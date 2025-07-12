import 'package:flutter/material.dart';
import 'news_fetcher.dart';
import 'gpt_summarizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _summary = "뉴스를 불러오는 중...";

  @override
  void initState() {
    super.initState();
    _fetchAndSummarizeNews();
  }

  Future<void> _fetchAndSummarizeNews() async {
    final news = await fetchTopNews();
    final summary = await summarizeWithGPT(news);
    setState(() {
      _summary = summary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('급등주 호재 알림 앱')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(_summary),
      ),
    );
  }
}