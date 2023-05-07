import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ApplyLeaves extends StatefulWidget {
  const ApplyLeaves({super.key});

  @override
  State<ApplyLeaves> createState() => _ApplyLeavesState();
}

class _ApplyLeavesState extends State<ApplyLeaves> {
  late TextEditingController _myController = TextEditingController();

  void _showDatePicker() {
    //show date picker
    showDateRangePicker(
            context: context,
            initialDateRange: DateTimeRange(
              start: DateTime.now(),
              end: DateTime.now(),
            ),
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime
                .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        // _selectedDate = pickedDate;
        //for rebuilding the ui
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          splashRadius: 20,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Apply For Leaves",
            style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Choose Date",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Date Picker with text field
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    child: SingleChildScrollView(
                      child: TextField(
                          controller: _myController,
                          readOnly: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.calendar_today,
                              color: Color(0xFF2EA7A3),
                              size: 20,
                            ),
                            suffixText: "2 days",
                            border: InputBorder.none,
                            hintText: '25th Aug - 27th Aug',
                          ),
                          onTap: _showDatePicker),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Choose leave Type",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Date Picker with text field
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    child: TextField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF2EA7A3),
                          size: 20,
                        ),
                        border: InputBorder.none,
                        hintText: 'Casual Leaves',
                      ),
                      onTap: () {
                        //Show date picker
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    child: TextField(
                      minLines: 5,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Reason',
                      ),
                      onTap: () {
                        //Show date picker
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ApplyLeaves(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 1.0, color: Color(0xFF2EA7A3)),
                      backgroundColor: const Color(0xFF2EA7A3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Text('SUBMIT FOR SUBMIT'),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
