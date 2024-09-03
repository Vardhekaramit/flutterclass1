import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataTableExp extends StatefulWidget {
  const DataTableExp({super.key});

  @override
  State<DataTableExp> createState() => _DataTableExpState();
}

class _DataTableExpState extends State<DataTableExp> {
  @override
  void initState() {
    // TODO: implement initState
    // /set of device orientation
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(        scrollDirection: Axis.horizontal,
          child: DataTable(
            border: TableBorder.all(borderRadius: BorderRadius.circular(2)),
                columns: const [
                  DataColumn(label: Text("Name", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                   DataColumn(label: Text("Age", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                   DataColumn(label: Text("Role", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                   DataColumn(label: Text("Role", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),


                  ],
            rows: const [
              DataRow(cells: [
                DataCell(Text("Amit",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                DataCell(Text("19",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                DataCell(Text("Student",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                DataCell(Text("Student",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
              ]) ,
              DataRow(cells: [
              DataCell(Text("Priyesh",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
              DataCell(Text("25",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                DataCell(Text("Student",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                DataCell(Text("Student",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
              ]) ,
                 DataRow(cells: [
                 DataCell(Text("Priyesh",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                 DataCell(Text("25",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                   DataCell(Text("Student",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                   DataCell(Text("Student",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),)
                 ])
            ],
          ),
        ),
      ),
    );

  }
}
