import 'package:flutter/material.dart';
import '../widgets/news_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NovaTicker 🔔'),
      ),
      body: ListView(
        children: const [
          NewsCard(
            title: 'FDA 승인! 급등 임박',
            summary: '이 회사가 획기적인 승인을 받았습니다.',
            sentiment: '긍정적',
          ),
          NewsCard(
            title: 'AI 기업 인수합병',
            summary: '글로벌 투자자들이 주목하는 딜',
            sentiment: '매우 긍정적',
          ),
        ],
      ),
    );
  }
}