Future<String> summarizeWithGPT(String text) async {
  await Future.delayed(const Duration(seconds: 1)); // Simulated delay
  return "요약: 주요 급등주 뉴스가 감지되었습니다.";
}