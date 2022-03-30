import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

enum Gender {
  male,
  female,
}

Gender selectedGender;

const kActiveColor = Color(0xff1D1E36);
const kInactiveColor = Color(0xff141028);

Color femaleCont = kInactiveColor;
Color maleCont = kInactiveColor;

const kLabelText = TextStyle(
  fontSize: 18,
  color: Color(0xff787984),
);

const kNumberText = TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.bold,
);

int height = 170;
int weight = 60;
int age = 25;

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E20),
        scaffoldBackgroundColor: Color(0xff0A0E20),
      ),
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  final int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableContainer(
                        otp: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 75,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'MALE',
                              style: kLabelText,
                            )
                          ],
                        ),
                        contColor: selectedGender == Gender.male
                            ? kActiveColor
                            : kInactiveColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        otp: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 75,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'FEMALE',
                              style: kLabelText,
                            )
                          ],
                        ),
                        contColor: selectedGender == Gender.female
                            ? kActiveColor
                            : kInactiveColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableContainer(
                        customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              style: kLabelText,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: kNumberText,
                                ),
                                Text(
                                  'см',
                                  style: kLabelText,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 14.0),
                                thumbColor: Color(0xffF50D56),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 28.0),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xff4E4F5F),
                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120,
                                max: 220,
                                onChanged: (double changeHeight) {
                                  setState(() {
                                    height = changeHeight.round();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        contColor: kActiveColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableContainer(
                        customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: kLabelText,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberText,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonPlusMinus(
                                  buttonIcon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10.0),
                                ButtonPlusMinus(
                                  buttonIcon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        contColor: kActiveColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        customChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kLabelText,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberText,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonPlusMinus(
                                  buttonIcon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10.0),
                                ButtonPlusMinus(
                                  buttonIcon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        contColor: kActiveColor,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EkinchiBarak()));
                }),
                child: Container(
                  height: 75.0,
                  width: double.infinity,
                  color: Color(0xffF50D56),
                  margin: EdgeInsets.only(top: 18.0),
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonPlusMinus extends StatelessWidget {
  const ButtonPlusMinus({Key key, this.buttonIcon, this.onPress})
      : super(key: key);
  final IconData buttonIcon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kInactiveColor,
      constraints: BoxConstraints.tightFor(
        width: 44.0,
        height: 44.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Icon(buttonIcon),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key key,
    @required this.contColor,
    this.customChild,
    this.otp,
  }) : super(key: key);

  final Color contColor;
  final Widget customChild;
  final Function otp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: otp,
      child: Container(
        child: customChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: contColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}

class EkinchiBarak extends StatelessWidget {
  const EkinchiBarak({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E20),
        scaffoldBackgroundColor: Color(0xff0A0E20),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ЖЫЙЫНТЫК'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableContainer(
                          customChild: BMISolutions(),
                          contColor: kActiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 75.0,
                    width: double.infinity,
                    color: Color(0xffF50D56),
                    margin: EdgeInsets.only(top: 18.0),
                    child: Center(
                      child: Text(
                        'КАЙРА ЭСЕПТЕ',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BMISolutions extends StatelessWidget {
  BMISolutions({
    Key key,
  }) : super(key: key);

  final double BMINumberous =
      ((weight / (height / 100 * height / 100)) * 100).round() / 100;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BMITextWithColor(BMINum: BMINumberous),
        BMINumber(BMINum: BMINumberous),
        //GetRadial(),
        DrawMultipleRange(BMINum: BMINumberous),
        BMIText(BMINum: BMINumberous),
      ],
    );
  }
}

class DrawMultipleRange extends StatelessWidget {
  const DrawMultipleRange({
    Key key,
    this.BMINum,
  }) : super(key: key);
  final double BMINum;
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            showAxisLine: false,
            showLabels: false,
            showTicks: false,
            startAngle: 180,
            endAngle: 360,
            minimum: 5,
            maximum: 50,
            canScaleToFit: true,
            radiusFactor: 0.79,
            pointers: <GaugePointer>[
              NeedlePointer(
                  needleStartWidth: 1,
                  lengthUnit: GaugeSizeUnit.factor,
                  needleEndWidth: 5,
                  needleLength: 0.7,
                  value: BMINum,
                  knobStyle: KnobStyle(knobRadius: 0)),
            ],
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: 0,
                  endValue: 18.5,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  color: const Color(0xFf27CCE8)),
              GaugeRange(
                  startValue: 18.6,
                  endValue: 24.9,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  color: const Color(0xFF94CD1C)),
              GaugeRange(
                  startValue: 25,
                  endValue: 29.9,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  color: const Color(0xFFF6CC2A)),
              GaugeRange(
                  startValue: 30,
                  endValue: 34.9,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  color: const Color(0xFFE99C4A)),
              GaugeRange(
                  startValue: 35,
                  endValue: 44.9,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  color: const Color(0xFFE85A13)),
              GaugeRange(
                  startValue: 45,
                  endValue: 50,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  color: const Color(0xFFC9383B)),
            ]),
        RadialAxis(
          showAxisLine: false,
          showLabels: false,
          showTicks: false,
          startAngle: 180,
          endAngle: 360,
          minimum: 13,
          maximum: 40,
          radiusFactor: 0.85,
          canScaleToFit: true,
          pointers: <GaugePointer>[
            MarkerPointer(
                markerType: MarkerType.text,
                text: 'ARYK',
                value: 13.5,
                textStyle: GaugeTextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'Times'),
                offsetUnit: GaugeSizeUnit.factor,
                markerOffset: -0.12),
            MarkerPointer(
                markerType: MarkerType.text,
                text: 'Orto',
                value: 24,
                textStyle: GaugeTextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'Times'),
                offsetUnit: GaugeSizeUnit.factor,
                markerOffset: -0.12),
            MarkerPointer(
                markerType: MarkerType.text,
                text: 'Semiz',
                value: 40,
                textStyle: GaugeTextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'Times'),
                offsetUnit: GaugeSizeUnit.factor,
                markerOffset: -0.12)
          ],
        ),
      ],
    );
  }
}

class BMIText extends StatelessWidget {
  BMIText({
    Key key,
    this.BMINum,
  }) : super(key: key);
  double BMINum;
  @override
  Widget build(BuildContext context) {
    if (BMINum < 18.5) {
      return Text('Сиз тезинен семиришиниз керек');
    } else if (BMINum > 18.6 && BMINum < 24.5) {
      return Text('Нормалдуу азаматсыз');
    } else if (BMINum > 24.6 && BMINum < 29.9) {
      return Text('Ашыкча Салмак Сиз семирип баратасыз');
    } else if (BMINum > 30 && BMINum < 34.9) {
      return Text(
          'Олутту Ашыкча Салмак сиз кундо эпте менен жугурбосонуз болбойт коп жеп жатасыз');
    } else if (BMINum > 35 && BMINum < 45) {
      return Text('Ушундай кете берсе болбойт. Сразу арыктоо керек');
    } else {
      return Text('Соз жок ваще семизсиз');
    }
  }
}

class BMITextWithColor extends StatelessWidget {
  BMITextWithColor({
    Key key,
    this.BMINum,
  }) : super(key: key);
  double BMINum;

  @override
  Widget build(BuildContext context) {
    if (BMINum < 18.5) {
      return Text('Арыксыз',
          style: TextStyle(color: Color(0xFf27CCE8), fontSize: 20));
    } else if (BMINum > 18.6 && BMINum < 24.5) {
      return Text('Нормалдуу',
          style: TextStyle(color: Color(0xFF94CD1C), fontSize: 20));
    } else if (BMINum > 24.6 && BMINum < 29.9) {
      return Text('Ашыкча Салмак',
          style: TextStyle(color: Color(0xFFF6CC2A), fontSize: 20));
    } else if (BMINum > 30 && BMINum < 34.9) {
      return Text('Олутту Ашыкча Салмак',
          style: TextStyle(color: Color(0xFFE99C4A), fontSize: 20));
    } else if (BMINum > 35 && BMINum < 45) {
      return Text('Оорулуу Ашыкча Салмак',
          style: TextStyle(color: Color(0xFFE85A13), fontSize: 20));
    } else {
      return Text('Супер Ашыкча Салмак',
          style: TextStyle(color: Color(0xFFC9383B), fontSize: 20));
    }
  }
}

class BMINumber extends StatelessWidget {
  BMINumber({
    Key key,
    this.BMINum,
  }) : super(key: key);
  double BMINum;
  @override
  Widget build(BuildContext context) {
    return Text(
      BMINum.toString(),
      style: TextStyle(fontSize: 50),
    );
  }
}
