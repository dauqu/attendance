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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //Circular avatar
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Name
                  const Text(
                    "Thomas Pattenson",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  //Email
                  const Text("Opration Manager"),
                  const SizedBox(
                    height: 40,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 1,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const [
                            ListTile(
                              leading: Icon(Icons.description),
                              title: Text("My Leaves"),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 0,
                              thickness: 1,
                            ),
                            ListTile(
                              leading: Icon(Icons.group),
                              title: Text("My Team"),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 0,
                              thickness: 1,
                            ),
                            ListTile(
                              leading: Icon(Icons.person_2_outlined),
                              title: Text("Update Profile"),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 1,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: const [
                          ListTile(
                            leading: Icon(Icons.notification_add),
                            title: Text("Notification Settings"),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 0,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: Icon(Icons.key),
                            title: Text("Change Password"),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 0,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: Icon(Icons.alarm_on),
                            title: Text("Reminder Settings"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 1,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const [
                            ListTile(
                              leading: Icon(Icons.privacy_tip),
                              title: Text("Privacy Policy"),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 0,
                              thickness: 1,
                            ),
                            ListTile(
                              leading: Icon(Icons.terminal_sharp),
                              title: Text("Terms & Conditions"),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 0,
                              thickness: 1,
                            ),
                            ListTile(
                              leading: Icon(Icons.help_outline),
                              title: Text("Help & Feedback"),
                            ),
                          ],
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
