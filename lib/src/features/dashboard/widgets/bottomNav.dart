import 'package:enableme/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyNavBar extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  // final String labelText;
  // final double width;
  // final ontap;
  // final IconData? icon;
  // final onTabTapped;

  // ignore: sort_constructors_first
  // MyNavBar(
  //     {required this.labelText, this.ontap, required this.width, this.icon});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: const EdgeInsets.all(17),
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
                color: TheColors.gray,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                border: Border.all(color: TheColors.gray)),
            height: 70.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.home_filled,
                          color: TheColors.brown,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.abc,
                          color: TheColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.abc,
                          color: TheColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.abc,
                          color: TheColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.push("/");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.logout_outlined,
                          color: TheColors.internationalOrange,
                        ),
                      ),
                    ),
                  ),
                ),
                // IconButton(
                //   icon: const Icon(Icons.home),
                //   onPressed: () => onTabTapped(0),
                //   color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                // ),
              ],
            )));
  }
}
