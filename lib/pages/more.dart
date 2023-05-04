import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                height: 20,
              ),
              //Circular avatar
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Name
              Text(
                "Thomas Pattenson",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              //Email
              Text("Opration Manager"),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text("My Leaves"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("My Team"),
              ),
              ListTile(
                leading: Icon(Icons.person_2_outlined),
                title: Text("Update Profile"),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.notification_add),
                title: Text("Notification Settings"),
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text("Change Password"),
              ),
              ListTile(
                leading: Icon(Icons.alarm_on),
                title: Text("Reminder Settings"),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("Privacy Policy"),
              ),
              ListTile(
                leading: Icon(Icons.terminal_sharp),
                title: Text("Terms & Conditions"),
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text("Help & Feedback"),
              ),
            ],
          )),
    );
  }
}
