
import "package:all_flutter_tutorial/wscube/listtiles.dart";
import "package:all_flutter_tutorial/wscube/rangeslider/rangeslider.dart";
import "package:all_flutter_tutorial/wscube/rangeslider/switch_widget.dart";
import "package:all_flutter_tutorial/wscube/richtext.dart";
import "package:all_flutter_tutorial/wscube/rowandcolumn.dart";
import "package:all_flutter_tutorial/wscube/scrollview.dart";
import "package:all_flutter_tutorial/wscube/sharepreferences.dart";
import "package:all_flutter_tutorial/wscube/sizebox.dart";
import "package:all_flutter_tutorial/wscube/splited_app_into_widgets.dart";
import "package:all_flutter_tutorial/wscube/stack.dart";
import "package:all_flutter_tutorial/wscube/stack_postion.dart";
import "package:all_flutter_tutorial/wscube/statefulwidgets.dart";
import "package:all_flutter_tutorial/wscube/textfield.dart";
import "package:all_flutter_tutorial/wscube/wrap.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "addimages.dart";
import "animations_in_flutter/animatedopasity.dart";
import "animations_in_flutter/cross_fade_animation.dart";
import "animations_in_flutter/heroanimation/first.dart";
import "buttons.dart";
import "calculator.dart";
import "call_user_function.dart";
import "bmi app/bmi.dart";
import "card_widget.dart";
import "clipreact.dart";
import "constrained_box.dart";
import "container_widget.dart";
import "custom_fonts.dart";
import "custom_widget/custom.dart";
import "data_pass_one_to_another_screen/first.dart";
import "date_picker.dart";
import "expanded_widget.dart";
import "font_awesome_icon.dart";
import "gradientcolors.dart";
import "grid_view.dart";
import "icons.dart";
import "inkwell.dart";
import "listview.dart";
import "listwheel.dart";
import "mappinglist.dart";
import "marginpadding.dart";

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
    // statusBarIconBrightness: Brightness.dark,
    // statusBarBrightness: Brightness.dark,
    // systemNavigationBarColor: Colors.cyanAccent,
    // systemNavigationBarDividerColor: Colors.red,
    // systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(const Mytutorial());}

class Mytutorial extends StatelessWidget{
  const Mytutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Scaffold(
        body:
        // Bmi(),
        // Addimages(),
        // Buttons(),
        // Calculator(),
        // CallUserFunction(),
        // CardWidget(),
        // Constrainedboxs(),
        // ContainerWidget(),
        // CustomFonts(),
        // Custom(),
        // Firstpage(),
        // DatePicker(),
        // ExpandedWidget(),
        // FontAwesomeIcon(),
        // GridViewwidget(),
        //   Iconswidgets(),
        // Inkwellwidget(),
        // Listtileswidget(),
        // Listviewwidget(),
        // Marginpadding(),
        // Stackwidget(),
        // Buildswitch(),
        // Rangesliderwidget(),
        // Richtextwidget(),
        // Rowandcolumn(),
        // Scrollviewwidget(),
        // Sizeboxwidget(),
        // SplitedAppIntoWidgets(),
        // StackPostion(),
        // statefull(),
        // Textfieldwidget(),
        // Wrapwidget(),
        // Clipreact(),
        // Listwheel(),
        // Gradientcolors(),
        // Mappinglist(),
        // Animatedcrossfade(),
        // Animatedopacity(),
        // Heroanimation(),
        Sharepreferencesall(),
      ),
    );
  }

}
