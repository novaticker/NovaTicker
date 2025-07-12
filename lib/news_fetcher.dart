Future<List<String>> fetchStockNews() async {
  // 여기에 실제로는 API 요청을 보내야 하지만, 지금은 샘플 뉴스 데이터로 대체
  await Future.delayed(Duration(seconds: 1)); // 네트워크 지연 시뮬레이션

  return [
    'A사, FDA 승인 소식에 급등',
    'B사, 대기업과의 파트너십 체결 발표',
    'C사, 인공지능 기술 상용화 발표',
    'D사, 새로운 투자 유치 성공',
  ];
}
