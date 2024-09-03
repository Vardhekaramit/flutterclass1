import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  DateRangePickerController dateRangePickerController = DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calander", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 10,

        child: SfDateRangePicker(
          controller: dateRangePickerController,
          headerHeight: 30,
          view: DateRangePickerView.month,
          selectionMode: DateRangePickerSelectionMode.single,
          showActionButtons: true,
          showNavigationArrow: true,
          backgroundColor: Colors.blue,
          onCancel: (){
              dateRangePickerController.selectedDate;
          },
          onSubmit: (value){
            print(value);
          },

        ),
      ),
    );
  }
}
