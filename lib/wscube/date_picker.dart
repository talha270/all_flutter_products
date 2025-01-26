import 'package:all_flutter_tutorial/wscube/custom_widget/custom_button.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});
  @override
  State<StatefulWidget> createState() {
    return Homepagestate();
  }
}
class Homepagestate extends State<DatePicker> {
  DateTime ? date=DateTime.now();
  TimeOfDay ? time=TimeOfDay.now();
  String datetime="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 20,
        title: const Text("datepicker"),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("datepicker",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            SizedBox(
              // width: 300,
              child: CustomButton(name: "data picker", function: ()async{
                date=await showDatePicker(context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                    initialDate: DateTime.now(),
                );
                setState(() {
                  datetime="Date: $date and Time: $time";
                });
                },
              icon: const Icon(Icons.calendar_month),),
            ),
            const Text("time picker ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            CustomButton(name: "time picker", function: ()async{
              time=await showTimePicker(context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial
              );
              setState(() {
                // datetime="Date: ${DateFormat('yMMMMd').format(date!)} and Time: ${DateFormat("jms").format(time! as DateTime)}";

                datetime="Date: $date and Time: $time";
              });
            },
            icon: const Icon(Icons.timelapse),),
            const SizedBox(height: 20,),
            // Text("current time :${DateFormat('jms').format(date!)}"),
            // Text("current time :${DateFormat('Hms').format(date!)}"),
            Text(datetime),
            // Text("current date : ${DateFormat('QQQQ').format(date!)}"),
            // Text("current date : ${DateFormat('EEEE').format(date!)}"),
            // Text("current date : ${DateFormat('MMMM').format(date!)}"),
          ],
        ),
      ),
    );
  }
}