import 'package:all_flutter_tutorial/learnwithaksith/alert_box.dart';
import 'package:all_flutter_tutorial/learnwithaksith/curved_nav_bar.dart';
import 'package:all_flutter_tutorial/learnwithaksith/lottie.dart';
import 'package:all_flutter_tutorial/learnwithaksith/repaintboundry.dart';
import 'package:all_flutter_tutorial/learnwithaksith/scroll_bar.dart';
import 'package:all_flutter_tutorial/learnwithaksith/shimmer.dart';
import 'package:all_flutter_tutorial/learnwithaksith/sliver_appbar.dart';
import 'package:all_flutter_tutorial/learnwithaksith/snackbar.dart';
import 'package:all_flutter_tutorial/learnwithaksith/stack_position.dart';
import 'package:all_flutter_tutorial/learnwithaksith/stepper.dart';
import 'package:all_flutter_tutorial/learnwithaksith/swithch_button.dart';
import 'package:all_flutter_tutorial/learnwithaksith/tabbar.dart';
import 'package:all_flutter_tutorial/learnwithaksith/take_only_number_textfiled.dart';
import 'package:all_flutter_tutorial/learnwithaksith/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'animatedtextkit.dart';
import 'bottomnavigation.dart';
import 'bottomsheet.dart';
import 'buttons.dart';
import 'container.dart';
import 'dismisable.dart';
import 'dragging.dart';
import 'drawer.dart';
import 'dropdownbutton.dart';
import 'encrupting_string.dart';
import 'form.dart';
import 'fractional_sizedbox.dart';
import 'geolocator.dart';
import 'imagepicker.dart';
import 'images.dart';
import 'overlapping_circle_avator.dart';

void main(){
  debugRepaintRainbowEnabled=true;
  runApp(const Learnwithaksith());
}

class Learnwithaksith extends StatelessWidget{
  const Learnwithaksith({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learnwithaksith",
      // theme:ThemeData.dark(),
      // ThemeData(
      //   primarySwatch: Colors.green,
      //   primaryColor: Colors.red
      // ),
      home:
      // const AlertBoxwidget(),
      // const Animatedtextpackage(),
      // Buttomsheetwidget(),
      // const Dismisablewidgets(),
      //   const Bottoconst mnavigationwidget(),
      // Buttonclass(),
      // Containersized(),
      //   Drawerwidget(),
      // const Dropdownwidget(const ),
      // const Formwidget(),
      // Imageswidget(),
      // const Stackwidgets(),
      // Tabbarhome(),
      // const Imagepickerpackage(),
      // const Snackbarwidght(),
      // const Shimmerpackage(),
      // const EncruptingString(),
      // Geolocatorpackage(),
      // const SliverAppbar()
      // VideoPlayerPackage(),
      // OverlappingCircleAvator(),
      //   const Stepperwidget(),
      //   CurvedNavBar(),
      // Bottomnavigationwidget(),
      // DragAndDropExample()
      // SwithchButton()
      // Lottieanimation(),
      FractionalSizedbox()
      // const Repaintboundry(),
      // ScrollBarExample()
    );
  }
}


//go android->app->src->main->androidmanifest.xml  and label to change the name of app in android
//go ios->runner->info.plist and change cpbundledisplayname