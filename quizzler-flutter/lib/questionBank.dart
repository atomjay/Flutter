import 'question.dart';

int _questionIndex = 0;

class QuestionBank {
  List<Question> _questionLibrary = [
    Question(
        q: '\"中二病\"是日語借詞，用於描述自認為有特殊能力或知識、性格自大、極度想出人頭地的青少年。這並不是真實的疾病，而這項概念在日本ACG次文化中具有重要地位',
        a: true),
    Question(
        q: '完了芭比Q了，是在日本走紅後開始流行到台灣，許多網路影片、新聞片段跟風大量使用，在關鍵片段加上電音配樂，甚至被改編成超洗腦歌曲。',
        a: false),
  ];

  void nextQuestion() {
    if (_questionIndex < _questionLibrary.length - 1) {
      _questionIndex++;
    }
  }

  String getQuestionText(int _questionIndex) {
    return _questionLibrary[_questionIndex].questionText;
  }

  bool getCorrectAnswer(int _questionIndex) {
    return _questionLibrary[_questionIndex].questionAnswer;
  }
}
