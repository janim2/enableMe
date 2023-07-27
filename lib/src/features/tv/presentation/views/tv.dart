import 'package:enableme/src/features/dashboard/widgets/appbar.dart';
import 'package:enableme/src/features/dashboard/widgets/roomsContainer.dart';
import 'package:enableme/src/features/rooms/presentation/widgets/roomsTypesContainer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../dashboard/widgets/circleWithImageInside.dart';
import '../../../rooms/presentation/widgets/circularStructureWithPlusInside.dart';

class TvPage extends StatefulWidget {
  const TvPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TvPageState createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  late Size size;

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  double _joystickX = 0.0;
  double _joystickY = 0.0;

  void _onJoystickUpdate(double x, double y) {
    setState(() {
      _joystickX = x;
      _joystickY = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              appLabel: "Television",
              icon: Icons.arrow_back,
              onLeftIconClick: () {
                final router = GoRouter.of(context);
                if (router.canPop()) router.pop();
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const RoomsTypesContainer(
                    isTransparent: true,
                    roomLabel: "Netflix",
                    devicesNumber: 0,
                    bgImage: "assets/images/netflix.png",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 13, top: 17, right: 13, bottom: 20),
                      // height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: TheColors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          border: Border.all(color: TheColors.white)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Joystick(
                              onJoystickUpdate: _onJoystickUpdate,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(18.0),
                                  color: Colors.white,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(Icons.fast_rewind),
                                ),
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.red,
                                  child: InkWell(
                                    splashColor: Colors.white24,
                                    child: const SizedBox(
                                      height: 56,
                                      width: 56,
                                      child: Icon(Icons.power_settings_new),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(18.0),
                                  color: Colors.white,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.fast_forward),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 156,
                                width: 56,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.arrow_drop_up),
                                    Text(
                                      'VOL',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "RokkitRegular"),
                                    ),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                              Container(
                                height: 156,
                                width: 56,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.arrow_drop_up),
                                    Text(
                                      'CH',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "RokkitRegular"),
                                    ),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
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

class Joystick extends StatefulWidget {
  final Function(double, double) onJoystickUpdate;

  const Joystick({super.key, required this.onJoystickUpdate});

  @override
  _JoystickState createState() => _JoystickState();
}

class _JoystickState extends State<Joystick> {
  Offset _joystickOrigin = Offset.zero;
  Offset _joystickDelta = Offset.zero;
  double _joystickMaxDistance =
      50.0; // Adjust this value to control sensitivity

  void _onPanStart(DragStartDetails details) {
    setState(() {
      _joystickOrigin = details.localPosition;
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _joystickDelta = details.localPosition - _joystickOrigin;
      double distance = _joystickDelta.distance;
      if (distance > _joystickMaxDistance) {
        _joystickDelta = _joystickDelta / distance * _joystickMaxDistance;
      }
      double normalizedX = _joystickDelta.dx / _joystickMaxDistance;
      double normalizedY = _joystickDelta.dy / _joystickMaxDistance;
      widget.onJoystickUpdate(normalizedX, normalizedY);
    });
  }

  void _onPanEnd(DragEndDetails details) {
    setState(() {
      _joystickDelta = Offset.zero;
      widget.onJoystickUpdate(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: CustomPaint(
        painter: _JoystickPainter(
          joystickDelta: _joystickDelta,
          joystickMaxDistance: _joystickMaxDistance,
        ),
      ),
    );
  }
}

class _JoystickPainter extends CustomPainter {
  final Offset joystickDelta;
  final double joystickMaxDistance;

  _JoystickPainter({
    required this.joystickDelta,
    required this.joystickMaxDistance,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint joystickPaint = Paint()..color = TheColors.white;
    Offset center = size.center(Offset.zero);
    Offset joystickPosition = center + joystickDelta;

    canvas.drawCircle(center, joystickMaxDistance,
        Paint()..color = TheColors.internationalOrange);

    if (joystickDelta.distance <= joystickMaxDistance) {
      canvas.drawCircle(joystickPosition, 25.0, joystickPaint);
    } else {
      Offset clampedDelta =
          joystickDelta / joystickDelta.distance * joystickMaxDistance;
      Offset clampedPosition = center + clampedDelta;
      canvas.drawCircle(clampedPosition, 25.0, joystickPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
