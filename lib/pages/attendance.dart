import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SfDateRangePicker(
                todayHighlightColor: Colors.red,
                backgroundColor: Colors.white,
                view: DateRangePickerView.month,
              ),
              const SizedBox(
                height: 10,
              ),
              //Table
              Container(
                //60% height of the screen
                height: MediaQuery.of(context).size.height * 0.5,
                child: SingleChildScrollView(
                  child: DataTable(
                    horizontalMargin: 10,
                    // border: TableBorder.all(color: Colors.grey),
                    columnSpacing: 20,
                    dividerThickness: 1,
                    //Full weight of the table
                    columns: const [
                      DataColumn(label: Text('Date')),
                      DataColumn(label: Text('Status')),
                      DataColumn(label: Text('Check In')),
                      DataColumn(label: Text('Check Out')),
                      DataColumn(label: Text('Edit')),
                    ],
                    rows: [
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('1st Sep')),
                        const DataCell(Text('Processing',
                            style: TextStyle(color: Color(0xFF2EA7A3)))),
                        const DataCell(Text('11:00 AM')),
                        const DataCell(Text('12:00 PM')),
                        DataCell(
                          IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color(0xFF2EA7A3),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
