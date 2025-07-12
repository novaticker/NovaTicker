import 'dart:async';

class NewsItem {
  final String title;
  final String summary;
  final String sentiment;

  NewsItem({
    required this.title,
    required this.summary,
    required this.sentiment,
  });
}

class NewsFetcher {
  // 추후 실제 API 연동 가능
  Future<List<NewsItem>> fetchNews() async {
    await Future.delayed(const Duration(seconds: 1)); // 모의 대기
    return [
      NewsItem(
        title: 'FDA 승인! 급등 가능성',
        summary: '임상 3상 결과 발표로 주가 폭등 가능',
        sentiment: '매우 긍정적',
      ),
      NewsItem(
        title: '글로벌 펀드의 투자',
        summary: 'XX사에 대규모 투자 유치',
        sentiment: '긍정적',
      ),
    ];
  }
}