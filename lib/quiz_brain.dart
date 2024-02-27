
import 'question.dart';

class QuizBrain {

  late int _questionNum = 0;
  final List<Question> _questionBank = [
    Question(q: 'Tony Stark is Iron man?', a: true),
    Question(q: 'Steve Rogers is Black Panther', a: false),
    Question(q: 'Jeffrey Dhammer is a great Scientist', a: false),
  ];

  void nextQuestion() {
    if (_questionNum < _questionBank.length - 1) {
      _questionNum++;
    }  
  }

  String getQuestion() {
    return _questionBank[_questionNum].questionText;
  }
  bool getAnswer() {
    return _questionBank[_questionNum].questionAns;
  }
}