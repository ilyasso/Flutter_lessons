import 'package:flutter/material.dart';
import 'package:general/lesson_03.dart';
import 'package:general/lesson_09_01/main.dart';
import 'package:general/lesson_10/main.dart';
import 'package:general/screens/quiz/quiz_screens.dart';
import 'package:general/screens/score/score_screens.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'home_page_button.dart';
import 'lesson_04.dart';
import 'lesson_05.dart';
import 'lesson_06.dart';
import 'lesson_06_02.dart';
import 'lesson_07.dart';
import 'lesson_08.dart';
import 'lesson_09/lesson_09.dart';

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Башкы бет",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: const Color(0xFF20C997),
            title: const Center(
              child: Text(
                'Тиркемелер',
              ),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomePageButton(
                      name: 'Тиркеме 1-2',
                      link: CounterApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 3',
                      link: ThirdLesson(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 4',
                      link: DiceApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 5',
                      link: XylophoneApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 6',
                      link: TestingApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 6+',
                      link: QuizApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 7',
                      link: FormsAndCards(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 8',
                      link: BMICalculator(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomePageButton(
                      name: 'Тиркеме 9',
                      link: WeatherApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 9+',
                      link: WEatherAppScreen(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 10',
                      link: WhatsappApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 5',
                      link: XylophoneApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 6',
                      link: TestingApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 6+',
                      link: QuizApp(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 7',
                      link: FormsAndCards(),
                    ),
                    HomePageButton(
                      name: 'Тиркеме 8',
                      link: BMICalculator(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
