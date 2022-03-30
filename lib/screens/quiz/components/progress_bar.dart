import 'package:flutter/material.dart';
import 'package:general/controllers/question_controllers.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff3f4768),
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: KDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          '${((controller.animation.value) * 60).round()} sec'),
                      WebsafeSvg.asset('assets/icons/clock.svg'),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
