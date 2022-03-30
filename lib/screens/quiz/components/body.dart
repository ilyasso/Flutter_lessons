import 'package:flutter/material.dart';
import 'package:general/controllers/question_controllers.dart';
import 'package:general/models/Questions.dart';
import 'package:general/screens/constants.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/icons/bg.svg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(
                height: KDefaultPadding,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            'Question ${_questionController.questionNumber.value}',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: '/${_questionController.questions.length}',
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: kSecondaryColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: KDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
