class GptSummarizer {
  String summarize(String content) {
    // 실제 GPT API 연결 부분 대신 모의 요약 제공
    if (content.contains('FDA')) {
      return 'FDA 승인 관련 긍정 뉴스로 해석됩니다.';
    } else if (content.contains('인수') || content.contains('합병')) {
      return 'M&A 관련 뉴스입니다. 긍정적 해석 가능.';
    } else if (content.contains('투자')) {
      return '투자 유치로 인한 호재로 판단됩니다.';
    } else {
      return '중립적인 뉴스입니다.';
    }
  }

  String getSentiment(String summary) {
    if (summary.contains('긍정')) {
      return '긍정적';
    } else if (summary.contains('호재')) {
      return '매우 긍정적';
    } else {
      return '중립';
    }
  }
}