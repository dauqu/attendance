import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyLeaves extends StatefulWidget {
  const MyLeaves({super.key});

  @override
  State<MyLeaves> createState() => _MyLeavesState();
}

class _MyLeavesState extends State<MyLeaves> {
  late TabController _tabController;

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
          title: const Text("My Leaves", style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text("25",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF2EA7A3))),
                          Text("Total Leaves", style: TextStyle(fontSize: 15))
                        ],
                      ),
                      Column(
                        children: const [
                          Text("15",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF888888))),
                          Text("Total Leaves", style: TextStyle(fontSize: 14))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Circular avator
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Color(0xFF2EA7A3),
                              radius: 25,
                              child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                  child: Text("02")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Casual Leaves",
                                style: TextStyle(fontSize: 14))
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Color(0xFF2EA7A3),
                              radius: 25,
                              child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                  child: Text("03")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Medical Leaves",
                                style: TextStyle(fontSize: 14))
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Color(0xFF2EA7A3),
                              radius: 25,
                              child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                  child: Text("05")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Planned Leaves",
                                style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Apply leave button
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const Dashboard(),
                        //     ));
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 1.0, color: Color(0xFF2EA7A3)),
                        backgroundColor: const Color(0xFF2EA7A3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      child: const Text('APPLY LEAVES'),
                    ),
                  ),

                  //Tabs
                  SizedBox(
                    height: 300,
                    child: DefaultTabController(
                        length: 2,
                        child: Scaffold(
                          backgroundColor: Colors.white,
                          appBar: AppBar(
                            toolbarHeight: 20,
                            backgroundColor: Colors.white,
                            leading: const Text(""),
                            leadingWidth: 0,
                            elevation: 0,
                            bottom: TabBar(
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xFF2EA7A3)),
                                splashBorderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: Colors.transparent,
                                tabs: const [
                                  Tab(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Pending",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          body: const TabBarView(
                              children: [Approve(), Pending()]),
                        )),
                  ),
                ],
              )),
        ));
  }
}

class Approve extends StatefulWidget {
  const Approve({super.key});

  @override
  State<Approve> createState() => _ApproveState();
}

class _ApproveState extends State<Approve> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text("Casual Leave Applied From"),
            subtitle: const Text("25th August 2022 to 26th August 2022"),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Color(0xFF2EA7A3)),
                  backgroundColor: const Color(0xFF2EA7A3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Approved")),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text("Casual Leave Applied From"),
            subtitle: const Text("25th August 2022 to 26th August 2022"),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Color(0xFF2EA7A3)),
                  backgroundColor: const Color(0xFF2EA7A3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Approved")),
          ),
        ],
      ),
    );
  }
}

class Pending extends StatefulWidget {
  const Pending({super.key});

  @override
  State<Pending> createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text("Casual Leave Applied From"),
            subtitle: const Text("25th August 2022 to 26th August 2022"),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Color(0xFFE4A700)),
                  backgroundColor: Color(0xFFE4A700),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Pending")),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text("Casual Leave Applied From"),
            subtitle: const Text("25th August 2022 to 26th August 2022"),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Color(0xFFE4A700)),
                  backgroundColor: const Color(0xFFE4A700),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Pending")),
          ),
        ],
      ),
    );
  }
}
