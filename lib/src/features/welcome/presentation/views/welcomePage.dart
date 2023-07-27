import 'package:enableme/core/utils/colors.dart';
import 'package:enableme/src/features/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late Size size;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
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
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Empower',
                      style: TextStyle(
                        color: TheColors.white,
                        fontSize: 20,
                        fontFamily: "RokkitRegular",
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Your',
                          style: TextStyle(
                              fontFamily: "RokkitRegular",
                              color: TheColors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: ' Abilities,',
                          style: TextStyle(
                            fontFamily: "RokkitRegular",
                            color: TheColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Embrace',
                      style: TextStyle(
                        color: TheColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Your',
                          style: TextStyle(
                              fontFamily: "RokkitRegular",
                              color: TheColors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: ' Dreams.',
                          style: TextStyle(
                            color: TheColors.white,
                            fontFamily: "RokkitRegular",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Welcome!",
                    style: TextStyle(
                        fontSize: 50,
                        color: TheColors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: "RokkitRegular"),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      context.go("/dashboard");
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                            border: Border.all(color: TheColors.white)),
                        child: const Icon(
                          Icons.arrow_forward_sharp,
                          color: TheColors.white,
                        )),
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
