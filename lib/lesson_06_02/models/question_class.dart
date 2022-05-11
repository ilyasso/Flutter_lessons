class QuestionKyrgyz {
  QuestionKyrgyz(
    this.questionText,
    this.questionAnswer,
  );

  String questionText;
  bool questionAnswer;
}

class QuestionBrain {
  int _questionNumber = 0;
  List<QuestionKyrgyz> _questionBank = [
    QuestionKyrgyz('Mount Everest is in Japan', false),
    QuestionKyrgyz('Mount Everest is in Nepal', true),
    QuestionKyrgyz('K2 is in China', false),
    QuestionKyrgyz('K2  is in Pakistan', true),
    QuestionKyrgyz('Yosemite Park is in USA', true),
    QuestionKyrgyz('2+2 is 5', false),
    QuestionKyrgyz('Alexander the great was an American Soldier', false),
    QuestionKyrgyz('Napolean was a cricket in England', false),
    QuestionKyrgyz('In Japanese culture tipping is bad', true),
    QuestionKyrgyz('We are living in a simulation', false),
    QuestionKyrgyz(
        'If we walk earth 10000 times, we will cover distance to moon', true),
    QuestionKyrgyz('Instead is same as inspite', true),
    QuestionKyrgyz('This is a shit quiz', true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void getNextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else
      return false;
  }
}
