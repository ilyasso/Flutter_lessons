import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/question_controllers.dart';
import 'components/body.dart';

class QuizScreens extends StatelessWidget {
  const QuizScreens({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: Text('Skip'),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
