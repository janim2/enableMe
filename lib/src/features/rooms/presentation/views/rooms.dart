import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
import 'package:enableme/src/features/dashboard/widgets/roomsContainer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/circularStructureWithPlusInside.dart';
import '../widgets/roomsTypesContainer.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RoomsPageState createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  late Size size;

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              appLabel: "Rooms",
              icon: Icons.arrow_back,
              onLeftIconClick: () {
                if (router.canPop()) router.pop();
              },
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  RoomsTypesContainer(
                    roomLabel: "Living Room",
                    devicesNumber: 7,
                    bgImage: "assets/images/artwork1.png",
                    onClick: () {
                      context.push("/specific_room/${"Living Room"}");
                    },
                  ),
                  RoomsTypesContainer(
                    roomLabel: "Kitchen",
                    devicesNumber: 4,
                    bgImage: "assets/images/artwork2.png",
                    onClick: () {
                      context.push("/specific_room/Kitchen");
                    },
                  ),
                  const circularStructureWithPlusInside(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
