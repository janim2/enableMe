import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
import 'package:enableme/src/features/dashboard/widgets/roomsContainer.dart';
import 'package:enableme/src/features/rooms/presentation/widgets/roomsTypesContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../dashboard/widgets/circleWithImageInside.dart';
import '../../../rooms/presentation/widgets/circularStructureWithPlusInside.dart';

class LightsPage extends StatefulWidget {
  const LightsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LightsPageState createState() => _LightsPageState();
}

class _LightsPageState extends State<LightsPage> {
  late Size size;
  bool _switchValue = false;
  String _currentImage = "assets/images/bulbOff.png";

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              appLabel: "Light",
              icon: Icons.arrow_back,
              onLeftIconClick: () {
                final router = GoRouter.of(context);
                if (router.canPop()) router.pop();
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  RoomsContainer(
                    label: "Living Room",
                    isSelected: true,
                  ),
                  RoomsContainer(
                    label: "Kitchen",
                  ),
                  RoomsContainer(
                    label: "BedRoom",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  RoomsTypesContainer(
                    isTransparent: true,
                    roomLabel: "Bulb",
                    devicesNumber: 1,
                    bgImage: _currentImage,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 160,
                      height: 160,
                      child: ClipOval(
                        child: Material(
                          color: TheColors.gray,
                          child: InkWell(
                            splashColor: Colors.white24,
                            child: SizedBox(
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: FlutterSwitch(
                                    width: 130.0,
                                    height: 55.0,
                                    valueFontSize: 35.0,
                                    toggleSize: 45.0,
                                    borderRadius: 30.0,
                                    padding: 8.0,
                                    showOnOff: true,
                                    value: _switchValue,
                                    onToggle: (value) {
                                      setState(() {
                                        _switchValue = value;
                                        _switchValue == true
                                            ? _currentImage =
                                                "assets/images/bulbOn.png"
                                            : _currentImage =
                                                "assets/images/bulbOff.png";
                                      });
                                    }),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
