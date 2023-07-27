// import 'package:enableme/core/utils/colors.dart';
// import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
// import 'package:enableme/src/features/dashboard/widgets/appilanceContainer.dart';
// import 'package:enableme/src/features/dashboard/widgets/bottomNav.dart';
// import 'package:enableme/src/features/dashboard/widgets/roomsContainer.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class DashBoardPage extends StatefulWidget {
//   const DashBoardPage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _DashBoardPageState createState() => _DashBoardPageState();
// }

// class _DashBoardPageState extends State<DashBoardPage> {
//   late Size size;

//   @override
//   void didChangeDependencies() {
//     size = MediaQuery.of(context).size;
//     super.didChangeDependencies();
//   }

//   int _currentIndex = 0;

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: MyNavBar(),
//       body: Text("rtretret"),
//       // body: Column(
//       //   children: [
//       //     const MyAppBar(
//       //       appLabel: "Dashboard",
//       //       icon: Icons.home_filled,
//       //     ),
//       //     Container(
//       //       margin: const EdgeInsets.only(left: 17, right: 17, top: 5),
//       //       padding: const EdgeInsets.all(9),
//       //       decoration: BoxDecoration(
//       //         color: TheColors.lightBrown,
//       //         borderRadius: const BorderRadius.all(
//       //           Radius.circular(20.0),
//       //         ),
//       //         border: Border.all(color: TheColors.lightBrown),
//       //       ),
//       //       child: Column(
//       //         children: [
//       //           Row(
//       //             mainAxisAlignment: MainAxisAlignment.center,
//       //             children: [
//       //               Column(
//       //                 mainAxisAlignment: MainAxisAlignment.start,
//       //                 children: const [
//       //                   Align(
//       //                     alignment: Alignment.centerLeft,
//       //                     child: Text(
//       //                       "Cloudy",
//       //                       textAlign: TextAlign.start,
//       //                       style: TextStyle(
//       //                           fontFamily: "RokkitRegular",
//       //                           fontSize: 20,
//       //                           fontWeight: FontWeight.bold),
//       //                     ),
//       //                   ),
//       //                   Text(
//       //                     "Sun with a cool",
//       //                     style: TextStyle(
//       //                       fontFamily: "RokkitRegular",
//       //                       fontSize: 17,
//       //                     ),
//       //                   ),
//       //                 ],
//       //               ),
//       //               const SizedBox(
//       //                 width: 30,
//       //               ),
//       //               const Text(
//       //                 "34",
//       //                 style: TextStyle(
//       //                   fontSize: 49,
//       //                   fontWeight: FontWeight.bold,
//       //                   fontFamily: "RokkitRegular",
//       //                 ),
//       //               ),
//       //             ],
//       //           ),
//       //           const Padding(
//       //             padding: EdgeInsets.all(20),
//       //             child: Divider(
//       //               color: Colors.black,
//       //               thickness: 1,
//       //             ),
//       //           ),
//       //           Row(
//       //             mainAxisSize: MainAxisSize.max,
//       //             mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //             children: <Widget>[
//       //               Column(
//       //                 children: const [
//       //                   Text(
//       //                     "28",
//       //                     style: TextStyle(
//       //                       fontWeight: FontWeight.bold,
//       //                       fontFamily: "RokkitRegular",
//       //                       fontSize: 22,
//       //                     ),
//       //                   ),
//       //                   Text("Sensible",
//       //                       style: TextStyle(
//       //                         fontSize: 18,
//       //                         fontFamily: "RokkitRegular",
//       //                       ))
//       //                 ],
//       //               ),

//       //               Column(
//       //                 children: const [
//       //                   Text(
//       //                     "60%",
//       //                     style: TextStyle(
//       //                       fontWeight: FontWeight.bold,
//       //                       fontFamily: "RokkitRegular",
//       //                       fontSize: 22,
//       //                     ),
//       //                   ),
//       //                   Text("Humidity",
//       //                       style: TextStyle(
//       //                         fontSize: 18,
//       //                         fontFamily: "RokkitRegular",
//       //                       ))
//       //                 ],
//       //               ),
//       //               Column(
//       //                 children: const [
//       //                   Text(
//       //                     "18 Km/h",
//       //                     style: TextStyle(
//       //                       fontWeight: FontWeight.bold,
//       //                       fontFamily: "RokkitRegular",
//       //                       fontSize: 22,
//       //                     ),
//       //                   ),
//       //                   Text("Force",
//       //                       style: TextStyle(
//       //                         fontSize: 18,
//       //                         fontFamily: "RokkitRegular",
//       //                       ))
//       //                 ],
//       //               ),
//       //               // IconButton(
//       //               //   icon: const Icon(Icons.home),
//       //               //   onPressed: () => onTabTapped(0),
//       //               //   color: _currentIndex == 0 ? Colors.blue : Colors.grey,
//       //               // ),
//       //             ],
//       //           ),
//       //         ],
//       //       ),
//       //     ),
//       //     const SizedBox(height: 10),
//       //     SingleChildScrollView(
//       //       scrollDirection: Axis.horizontal,
//       //       child: Row(
//       //         children: [
//       //           GestureDetector(
//       //             onTap: () {
//       //               context.push("/rooms");
//       //             },
//       //             child: const RoomsContainer(
//       //               label: "All",
//       //             ),
//       //           ),
//       //           InkWell(
//       //             onTap: () {
//       //               context.push("/specific_room/${"Living Room"}");
//       //             },
//       //             child: const RoomsContainer(
//       //               label: "Living Room",
//       //               isSelected: true,
//       //             ),
//       //           ),
//       //           RoomsContainer(
//       //             label: "Kitchen",
//       //             onSelected: () {
//       //               context.push("/specific_room/Kitchen");
//       //             },
//       //           ),
//       //           RoomsContainer(
//       //             label: "Bathroom",
//       //             onSelected: () {
//       //               context.push("/specific_room/${"BathRoom"}");
//       //             },
//       //           ),
//       //         ],
//       //       ),
//       //     ),
//       //     const SizedBox(height: 10),
//       //     Row(
//       //       mainAxisAlignment: MainAxisAlignment.center,
//       //       children: const [
//       //         AppilanceContainer(
//       //           applianceLabel: "Air Purifier",
//       //           bgImage: "assets/images/artwork4.png",
//       //         ),
//       //         AppilanceContainer(
//       //           applianceLabel: "Wi-Fi Router",
//       //           bgImage: "assets/images/artwork5.png",
//       //         )
//       //       ],
//       //     ),

//       //     // Container(
//       //     //   margin: const EdgeInsets.only(left: 13, top: 17),
//       //     //   decoration: BoxDecoration(
//       //     //     // color: Color.fromARGB(255, 24, 20, 16),
//       //     //     borderRadius: const BorderRadius.all(
//       //     //       Radius.circular(20.0),
//       //     //     ),
//       //     //     border: Border.all(color: TheColors.white),
//       //     //   ),
//       //     //   child: ClipRRect(
//       //     //     borderRadius: BorderRadius.circular(12.0),
//       //     //     child: Stack(children: [
//       //     //       Image.asset(
//       //     //         "assets/images/artwork3.png",
//       //     //         fit: BoxFit.contain,
//       //     //       ),
//       //     //       Align(
//       //     //         alignment: Alignment.bottomLeft,
//       //     //         child: Padding(
//       //     //           padding: const EdgeInsets.all(10.0),
//       //     //           child: Text(
//       //     //             "applianceLabel!",
//       //     //             style: const TextStyle(
//       //     //               color: TheColors.brown,
//       //     //               fontWeight: FontWeight.bold,
//       //     //             ),
//       //     //           ),
//       //     //         ),
//       //     //       )
//       //     //     ]),
//       //     //   ),
//       //     // ),
//       //     // AppilanceContainer(
//       //     //   applianceLabel: "Air Conditioning",
//       //     //   bgImage: "assets/images/artwork3.png",
//       //     //   width: 200,
//       //     // ),
//       //     const SizedBox(
//       //       height: 20,
//       //     ),
//       //   ],
//       // )

//       // Stack(
//       //   children: [
//       //     Positioned.fill(
//       //       child: Image.asset(
//       //         "assets/images/bg.jpg",
//       //         fit: BoxFit.cover,
//       //         alignment: Alignment.center,
//       //       ),
//       //     ),
//       //     // Dark Overlay
//       //     Container(
//       //       color: TheColors.brown.withOpacity(0.7),
//       //     ),
//       //     GestureDetector(
//       //       behavior: HitTestBehavior.translucent,
//       //       child: SingleChildScrollView(
//       //         child: Column(
//       //           children: [
//       //             const MyAppBar(
//       //               appLabel: "Dashboard",
//       //               icon: Icons.home_filled,
//       //             ),
//       //             Container(
//       //               margin: const EdgeInsets.only(left: 17, right: 17, top: 5),
//       //               padding: const EdgeInsets.all(9),
//       //               decoration: BoxDecoration(
//       //                 color: TheColors.lightBrown,
//       //                 borderRadius: const BorderRadius.all(
//       //                   Radius.circular(20.0),
//       //                 ),
//       //                 border: Border.all(color: TheColors.lightBrown),
//       //               ),
//       //               child: Column(
//       //                 children: [
//       //                   Row(
//       //                     mainAxisAlignment: MainAxisAlignment.center,
//       //                     children: [
//       //                       Column(
//       //                         mainAxisAlignment: MainAxisAlignment.start,
//       //                         children: const [
//       //                           Align(
//       //                             alignment: Alignment.centerLeft,
//       //                             child: Text(
//       //                               "Cloudy",
//       //                               textAlign: TextAlign.start,
//       //                               style: TextStyle(
//       //                                   fontFamily: "RokkitRegular",
//       //                                   fontSize: 20,
//       //                                   fontWeight: FontWeight.bold),
//       //                             ),
//       //                           ),
//       //                           Text(
//       //                             "Sun with a cool",
//       //                             style: TextStyle(
//       //                               fontFamily: "RokkitRegular",
//       //                               fontSize: 17,
//       //                             ),
//       //                           ),
//       //                         ],
//       //                       ),
//       //                       const SizedBox(
//       //                         width: 30,
//       //                       ),
//       //                       const Text(
//       //                         "34",
//       //                         style: TextStyle(
//       //                           fontSize: 49,
//       //                           fontWeight: FontWeight.bold,
//       //                           fontFamily: "RokkitRegular",
//       //                         ),
//       //                       ),
//       //                     ],
//       //                   ),
//       //                   const Padding(
//       //                     padding: EdgeInsets.all(20),
//       //                     child: Divider(
//       //                       color: Colors.black,
//       //                       thickness: 1,
//       //                     ),
//       //                   ),
//       //                   Row(
//       //                     mainAxisSize: MainAxisSize.max,
//       //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //                     children: <Widget>[
//       //                       Column(
//       //                         children: const [
//       //                           Text(
//       //                             "28",
//       //                             style: TextStyle(
//       //                               fontWeight: FontWeight.bold,
//       //                               fontFamily: "RokkitRegular",
//       //                               fontSize: 22,
//       //                             ),
//       //                           ),
//       //                           Text("Sensible",
//       //                               style: TextStyle(
//       //                                 fontSize: 18,
//       //                                 fontFamily: "RokkitRegular",
//       //                               ))
//       //                         ],
//       //                       ),

//       //                       Column(
//       //                         children: const [
//       //                           Text(
//       //                             "60%",
//       //                             style: TextStyle(
//       //                               fontWeight: FontWeight.bold,
//       //                               fontFamily: "RokkitRegular",
//       //                               fontSize: 22,
//       //                             ),
//       //                           ),
//       //                           Text("Humidity",
//       //                               style: TextStyle(
//       //                                 fontSize: 18,
//       //                                 fontFamily: "RokkitRegular",
//       //                               ))
//       //                         ],
//       //                       ),
//       //                       Column(
//       //                         children: const [
//       //                           Text(
//       //                             "18 Km/h",
//       //                             style: TextStyle(
//       //                               fontWeight: FontWeight.bold,
//       //                               fontFamily: "RokkitRegular",
//       //                               fontSize: 22,
//       //                             ),
//       //                           ),
//       //                           Text("Force",
//       //                               style: TextStyle(
//       //                                 fontSize: 18,
//       //                                 fontFamily: "RokkitRegular",
//       //                               ))
//       //                         ],
//       //                       ),
//       //                       // IconButton(
//       //                       //   icon: const Icon(Icons.home),
//       //                       //   onPressed: () => onTabTapped(0),
//       //                       //   color: _currentIndex == 0 ? Colors.blue : Colors.grey,
//       //                       // ),
//       //                     ],
//       //                   ),
//       //                 ],
//       //               ),
//       //             ),
//       //             const SizedBox(height: 10),
//       //             SingleChildScrollView(
//       //               scrollDirection: Axis.horizontal,
//       //               child: Row(
//       //                 children: [
//       //                   const RoomsContainer(
//       //                     label: "All",
//       //                   ),
//       //                   InkWell(
//       //                     onTap: () {
//       //                       debugPrint("working");
//       //                       // context.push("/specific_room/${"Living Room"}");
//       //                     },
//       //                     child: const RoomsContainer(
//       //                       label: "Living Room",
//       //                       isSelected: true,
//       //                     ),
//       //                   ),
//       //                   RoomsContainer(
//       //                     label: "Kitchen",
//       //                     onSelected: () {
//       //                       // context.push("/specific_room/Kitchen");
//       //                     },
//       //                   ),
//       //                   RoomsContainer(
//       //                     label: "Bathroom",
//       //                     onSelected: () {
//       //                       // context.push("/specific_room/${"BathRoom"}");
//       //                     },
//       //                   ),
//       //                 ],
//       //               ),
//       //             ),
//       //             const SizedBox(height: 10),
//       //             Row(
//       //               mainAxisAlignment: MainAxisAlignment.center,
//       //               children: const [
//       //                 AppilanceContainer(
//       //                   applianceLabel: "Air Purifier",
//       //                   bgImage: "assets/images/artwork4.png",
//       //                 ),
//       //                 AppilanceContainer(
//       //                   applianceLabel: "Wi-Fi Router",
//       //                   bgImage: "assets/images/artwork5.png",
//       //                 )
//       //               ],
//       //             ),
//       //             // Container(
//       //             //   margin: const EdgeInsets.only(left: 13, top: 17),
//       //             //   decoration: BoxDecoration(
//       //             //     // color: Color.fromARGB(255, 24, 20, 16),
//       //             //     borderRadius: const BorderRadius.all(
//       //             //       Radius.circular(20.0),
//       //             //     ),
//       //             //     border: Border.all(color: TheColors.white),
//       //             //   ),
//       //             //   child: ClipRRect(
//       //             //     borderRadius: BorderRadius.circular(12.0),
//       //             //     child: Stack(children: [
//       //             //       Image.asset(
//       //             //         "assets/images/artwork3.png",
//       //             //         fit: BoxFit.contain,
//       //             //       ),
//       //             //       Align(
//       //             //         alignment: Alignment.bottomLeft,
//       //             //         child: Padding(
//       //             //           padding: const EdgeInsets.all(10.0),
//       //             //           child: Text(
//       //             //             "applianceLabel!",
//       //             //             style: const TextStyle(
//       //             //               color: TheColors.brown,
//       //             //               fontWeight: FontWeight.bold,
//       //             //             ),
//       //             //           ),
//       //             //         ),
//       //             //       )
//       //             //     ]),
//       //             //   ),
//       //             // ),
//       //             // AppilanceContainer(
//       //             //   applianceLabel: "Air Conditioning",
//       //             //   bgImage: "assets/images/artwork3.png",
//       //             //   width: 200,
//       //             // ),
//       //             const SizedBox(
//       //               height: 20,
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //     ),
//       //     InkWell(
//       //       onTap: () {},
//       //       child: MyNavBar(),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
import 'package:enableme/src/features/dashboard/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/colors.dart';
import '../widgets/appilanceContainer.dart';
import '../widgets/roomsContainer.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PlaceholderWidget(TheColors.brown, 'Home'),
    PlaceholderWidget(Colors.green, 'Favorites'),
    PlaceholderWidget(Colors.red, 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_currentIndex],

          const SafeArea(
            child: MyAppBar(
              appLabel: "Dashboard",
              icon: Icons.home,
            ),
          ),
          MyNavBar() // Content of the currently selected page
        ],
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final String title;

  PlaceholderWidget(this.color, this.title);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          color: color,
          child: Container(
            margin: const EdgeInsets.only(left: 17, right: 17, top: 100),
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
                                fontFamily: "RokkitRegular",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Sun with a cool",
                          style: TextStyle(
                            fontFamily: "RokkitRegular",
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "34",
                      style: TextStyle(
                        fontSize: 49,
                        fontWeight: FontWeight.bold,
                        fontFamily: "RokkitRegular",
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "RokkitRegular",
                            fontSize: 22,
                          ),
                        ),
                        Text("Sensible",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "RokkitRegular",
                            ))
                      ],
                    ),

                    Column(
                      children: const [
                        Text(
                          "60%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "RokkitRegular",
                            fontSize: 22,
                          ),
                        ),
                        Text("Humidity",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "RokkitRegular",
                            ))
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "18 Km/h",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "RokkitRegular",
                            fontSize: 22,
                          ),
                        ),
                        Text("Force",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "RokkitRegular",
                            ))
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
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RoomsContainer(
                  label: "All",
                  onSelected: () {
                    context.push("/rooms");
                  },
                ),
                RoomsContainer(
                  label: "Living Room",
                  isSelected: true,
                  onSelected: () {
                    context.push("/specific_room/${"Living Room"}");
                  },
                ),
                RoomsContainer(
                  label: "Kitchen",
                  onSelected: () {
                    context.push("/specific_room/Kitchen");
                  },
                ),
                RoomsContainer(
                  label: "Bathroom",
                  onSelected: () {
                    context.push("/specific_room/${"BathRoom"}");
                  },
                ),
              ],
            ),
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
      ],
    );
  }
}
