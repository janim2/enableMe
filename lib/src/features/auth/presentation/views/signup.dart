import 'package:enableme/core/utils/colors.dart';
import 'package:enableme/src/features/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/auth_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<SignupPage> {
  late Size size;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  void signIn() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      //TODO: Navigate to new page.
    }
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
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
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 80),
                  Text(
                    'Create Account',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                        color: TheColors.white,
                        height: 1.5,
                        fontFamily: "RokkitRegular"),
                  ),
                  const SizedBox(height: 20),
                  AuthField(
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    labelText: 'Full Name',
                    keyboardType: TextInputType.text,
                    controller: emailController,
                    onSubmit: (_) => signIn(),
                  ),
                  const SizedBox(height: 20),
                  AuthField(
                    icon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    labelText: 'Email',
                    keyboardType: TextInputType.visiblePassword,
                    controller: emailController,
                    onSubmit: (_) => signIn(),
                  ),
                  const SizedBox(height: 20),
                  AuthField(
                    icon: const Icon(
                      Icons.lock_clock_outlined,
                      color: Colors.white,
                    ),
                    labelText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    controller: emailController,
                    onSubmit: (_) => signIn(),
                  ),
                  const SizedBox(height: 20),
                  AuthField(
                    icon: const Icon(
                      Icons.lock_clock_outlined,
                      color: Colors.white,
                    ),
                    labelText: 'Confirm Password',
                    keyboardType: TextInputType.visiblePassword,
                    controller: emailController,
                    onSubmit: (_) => signIn(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 150, // Set the desired width of the button
                      child: MyButton(
                        width: 200,
                        labelText: "Sign Up",
                        icon: Icons.arrow_forward,
                        ontap: () {
                          if (router.canPop()) router.pop();
                        },
                      )),
                ],
              ),
            ),
          ),

          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: GestureDetector(
                  onTap: () {
                    if (router.canPop()) router.pop();
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                        fontFamily: "RokkitRegular",
                        color: TheColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' SIGN IN',
                          style: TextStyle(
                            fontFamily: "RokkitRegular",
                            color: TheColors.internationalOrange,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
