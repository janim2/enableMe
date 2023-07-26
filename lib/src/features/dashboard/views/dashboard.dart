import 'package:enableme/core/utils/colors.dart';
import 'package:enableme/src/features/auth/presentation/widgets/button.dart';
import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
import 'package:enableme/src/features/dashboard/widgets/appilanceContainer.dart';
import 'package:enableme/src/features/dashboard/widgets/bottomNav.dart';
import 'package:enableme/src/features/dashboard/widgets/roomsContainer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  late Size size;

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body: ListView(
        //     children: [
        //       Column(children: [
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("dd"),
        //         Text("ee"),
        //       ]),
        //     ],
        //   ),
        // );

        Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          // Dark Overlay
          Container(
            color: TheColors.brown.withOpacity(0.7),
          ),
          ListView(
              // Wrap the whole content with SingleChildScrollView
              children: [
                Column(
                  children: [
                    const MyAppBar(
                      appLabel: "Dashboard",
                      icon: Icons.home_filled,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 17, right: 17, top: 5),
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: TheColors.lightBrown,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        border: Border.all(color: TheColors.lightBrown),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Cloudy",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text("Sun with a cool"),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                "34",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: const [
                                  Text(
                                    "28",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Sensible",
                                      style: TextStyle(fontSize: 16))
                                ],
                              ),

                              Column(
                                children: const [
                                  Text(
                                    "60%",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Humidity",
                                      style: TextStyle(fontSize: 16))
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "18 Km/h",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Force", style: TextStyle(fontSize: 16))
                                ],
                              ),
                              // IconButton(
                              //   icon: const Icon(Icons.home),
                              //   onPressed: () => onTabTapped(0),
                              //   color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RoomsContainer(
                            label: "All",
                          ),
                          InkWell(
                            onTap: () {
                              print("working");
                              // context.push("/specific_room/${"Living Room"}");
                            },
                            child: RoomsContainer(
                              label: "Living Room",
                              isSelected: true,
                            ),
                          ),
                          RoomsContainer(
                            label: "Kitchen",
                            onSelected: () {
                              // context.push("/specific_room/Kitchen");
                            },
                          ),
                          RoomsContainer(
                            label: "Bathroom",
                            onSelected: () {
                              // context.push("/specific_room/${"BathRoom"}");
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AppilanceContainer(
                          applianceLabel: "Air Purifier",
                          bgImage: "assets/images/artwork4.png",
                        ),
                        AppilanceContainer(
                          applianceLabel: "Wi-Fi Router",
                          bgImage: "assets/images/artwork5.png",
                        )
                      ],
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 13, top: 17),
                    //   decoration: BoxDecoration(
                    //     // color: Color.fromARGB(255, 24, 20, 16),
                    //     borderRadius: const BorderRadius.all(
                    //       Radius.circular(20.0),
                    //     ),
                    //     border: Border.all(color: TheColors.white),
                    //   ),
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(12.0),
                    //     child: Stack(children: [
                    //       Image.asset(
                    //         "assets/images/artwork3.png",
                    //         fit: BoxFit.contain,
                    //       ),
                    //       Align(
                    //         alignment: Alignment.bottomLeft,
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(10.0),
                    //           child: Text(
                    //             "applianceLabel!",
                    //             style: const TextStyle(
                    //               color: TheColors.brown,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //       )
                    //     ]),
                    //   ),
                    // ),
                    // AppilanceContainer(
                    //   applianceLabel: "Air Conditioning",
                    //   bgImage: "assets/images/artwork3.png",
                    //   width: 200,
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
          InkWell(
            onTap: () {},
            child: MyNavBar(),
          ),
        ],
      ),
    );
  }
}
