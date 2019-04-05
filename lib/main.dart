import 'package:page_transition/page_transition.dart';
import 'package:analog_time_picker/full_page_analog_time_picker.dart';
import 'package:custom_radio_button/full_page_radio_group.dart';
import 'package:data_review_and_upload/data_review_and_upload.dart';
import 'package:flutter/material.dart';
import 'package:human_anatomy/full_page_human_anatomy.dart';
import 'package:location_and_image_picker/fullpage_location_and_pic_picker.dart';
import 'package:swipe_button/swipe_button_demo.dart';
import 'package:analog_time_picker/utils.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/home':
            return PageTransition(child: HomePage(),type: PageTransitionType.leftToRight);
            break;
          case '/second':
            return PageTransition(child: PageOne(),type: PageTransitionType.leftToRight);
            break;
          case '/third':
            return PageTransition(
                child: PageTwo(
                  mapData: settings.arguments,
                ),type: PageTransitionType.leftToRight);
            break;
          case '/fourth':
            return PageTransition(
                child: PageThree(
                  mapData: settings.arguments,
                ),type: PageTransitionType.leftToRight);
            break;
          case '/fifth':
            return PageTransition(
                child: PageFour(
                  mapData: settings.arguments,
                ),type: PageTransitionType.leftToRight);
            break;
          case '/sixth':
            return PageTransition(
                child: PageFive(
                  mapData: settings.arguments,
                ),type: PageTransitionType.leftToRight);
            break;
          case '/seventh':
            return PageTransition(
                child: PageSeven(
                  mapData: settings.arguments,
                ),type: PageTransitionType.leftToRight);
            break;
        }
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwipeButtonDemo(
      pageRoute: "/second",
      buttonTitle: "Swipe to report incident",
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FullPageRadioGroup(
      container: TopPrograssBar(
        progressBarImagePath: "assets/step_1.png",
      ),
      isSquareRadioGroup: true,
      title: "Severty?",
      route: "/third",
      mapKey: 'priority',
    );
  }
}

class PageTwo extends StatelessWidget {
  final Map mapData;
  const PageTwo({Key key, this.mapData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(mapData);

    return new FullPageRadioGroup(
        container: TopPrograssBar(
          progressBarImagePath: "assets/step_2.png",
        ),
        isSquareRadioGroup: false,
        title: "What happended?",
        route: "/fourth",
        mapData: mapData,
        mapKey: 'incidentType');
  }
}

class PageThree extends StatelessWidget {
  final Map mapData;
  const PageThree({Key key, this.mapData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FullPageHumanAnatomy(
      container: TopPrograssBar(
        progressBarImagePath: "assets/step_3.png",
      ),
      mapData: mapData,
      title: "Where it is?",
      route: "/fifth",
    );
  }
}

class PageFour extends StatelessWidget {
  final Map mapData;
  const PageFour({Key key, this.mapData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FullPageAnalogTimePicker(
      mapData: mapData,
      container: TopPrograssBar(
        progressBarImagePath: "assets/step_4.png",
      ),
      route: "/sixth",
    );
  }
}

class PageFive extends StatelessWidget {
  final Map mapData;
  const PageFive({Key key, this.mapData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FullPageLocationAndImagePicker(
      container: TopPrograssBar(
        progressBarImagePath: "assets/step_5.png",
      ),
      mapData: mapData,
      title: "Where it happened?",
      route: "/seventh",
    );
  }
}

class PageSeven extends StatelessWidget {
  final Map mapData;
  const PageSeven({Key key, this.mapData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DataReviewAndUpload(
      container: TopPrograssBar(
        progressBarImagePath: "assets/step_6.png",
      ),
      mapData: mapData,
      apiUrl: "http://www.sheikhsoft.com/accident-reporting/upload.php",

    );
  }
}

