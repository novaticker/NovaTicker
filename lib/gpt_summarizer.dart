String summarizeNews(List<String> newsList) {
  if (newsList.isEmpty) return '뉴스가 없습니다.';

  // 아주 간단한 요약 예시: 첫 번째 뉴스만 표시
  return '요약: ${newsList.first}';
}
