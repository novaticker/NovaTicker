Future<String> fetchTopNews() async {
  await Future.delayed(const Duration(seconds: 1)); // Simulated delay
  return "FDA 승인, 인수합병, 투자유치 등 급등주 뉴스가 감지되었습니다.";
}