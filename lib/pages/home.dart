import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 60,
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //Circular avatar
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //Time and date
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: "19: 05 ",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "PM",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Monday, 2nd August 2021",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //Attendance button
              Container(
                width: 230,
                height: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 10,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF35A6A8).withAlpha(10),
                      blurRadius: 20,
                      spreadRadius: -5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF35A6A8),
                      Color(0xFF7D9EEC),
                    ],
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.ads_click,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Clock In",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //Attendance button
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        //Icon
                        Icon(
                          Icons.alarm_on,
                          size: 30,
                          color: Color(0xFF779EE5),
                        ),
                        Text("--:--",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Clock In",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Column(
                      children: const [
                        //Icon
                        Icon(
                          Icons.alarm_on,
                          size: 30,
                          color: Color(0xFF779EE5),
                        ),
                        Text("--:--",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Clock Out",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Column(
                      children: const [
                        //Icon
                        Icon(
                          Icons.alarm_on,
                          size: 30,
                          color: Color(0xFF779EE5),
                        ),
                        Text("--:--",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Working Hrs",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
