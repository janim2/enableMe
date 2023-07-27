import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
import 'package:enableme/src/features/dashboard/widgets/roomsContainer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../dashboard/widgets/circleWithImageInside.dart';
import '../widgets/circularStructureWithPlusInside.dart';

class SpecificRoomsPage extends StatefulWidget {
  const SpecificRoomsPage({super.key, this.roomType});

  final String? roomType;
  @override
  // ignore: library_private_types_in_public_api
  _SpecificRoomsPageState createState() => _SpecificRoomsPageState();
}

class _SpecificRoomsPageState extends State<SpecificRoomsPage> {
  late Size size;

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  bigText(String? text) {
    return Text(
      text!,
      style: const TextStyle(fontFamily: "RokkitRegular", fontSize: 20),
    );
  }

  smallText(String? text) {
    return Text(
      text!,
      style: const TextStyle(fontFamily: "RokkitRegular", fontSize: 17),
    );
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              appLabel: widget.roomType,
              icon: Icons.arrow_back,
              onLeftIconClick: () {
                if (router.canPop()) router.pop();
              },
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RoomsContainer(
                    onSelected: () {
                      if (router.canPop()) router.pop();
                    },
                    label: "All",
                  ),
                  const RoomsContainer(
                    label: "Living Room",
                    isSelected: true,
                  ),
                  const RoomsContainer(
                    label: "Kitchen",
                  ),
                  const RoomsContainer(
                    label: "Bathroom",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 13, top: 17, right: 13),
                      // height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: TheColors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          border: Border.all(color: TheColors.white)),
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: const circularStructureWithPlusInside(
                              widget: CircleWithImageInside(
                                icon: Icons.add_circle,
                                theColor: TheColors.lightBrown,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: circularStructureWithPlusInside(
                                theColor: TheColors.gray,
                                widget: Column(
                                  children: [
                                    bigText(
                                      "Air conditioning",
                                    ),
                                    smallText(
                                      "Cooling 23",
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: circularStructureWithPlusInside(
                                action: () {
                                  context.push("/tv");
                                },
                                theColor: TheColors.gray,
                                widget: Column(
                                  children: [
                                    bigText("Television"),
                                    smallText("Channel 23")
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: circularStructureWithPlusInside(
                                action: () {
                                  context.push("/lights");
                                },
                                theColor: TheColors.gray,
                                widget: Column(
                                  children: const [Text("Light"), Text("On")],
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: circularStructureWithPlusInside(
                                theColor: TheColors.gray,
                                widget: Column(
                                  children: [
                                    bigText("Wi-Fi Router"),
                                    smallText("4mb/sec")
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: circularStructureWithPlusInside(
                                theColor: TheColors.gray,
                                widget: Column(
                                  children: [
                                    bigText("Air Purifier"),
                                    smallText("On")
                                  ],
                                )),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
