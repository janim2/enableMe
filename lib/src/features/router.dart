import 'package:enableme/src/features/auth/presentation/views/login.dart';
import 'package:enableme/src/features/dashboard/views/dashboard.dart';
import 'package:enableme/src/features/light/presentation/views/lights.dart';
import 'package:enableme/src/features/rooms/presentation/views/rooms.dart';
import 'package:enableme/src/features/rooms/presentation/views/specificRoom.dart';
import 'package:enableme/src/features/splash/presentation/views/splashScreen.dart';
import 'package:enableme/src/features/tv/presentation/views/tv.dart';
import 'package:enableme/src/features/welcome/presentation/views/welcomePage.dart';
import 'package:go_router/go_router.dart';

import 'auth/presentation/views/signup.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const SignupPage(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashBoardPage(),
    ),
    GoRoute(
      path: '/rooms',
      builder: (context, state) => const RoomsPage(),
    ),
    GoRoute(
      path: '/specific_room/:roomType',
      builder: (context, state) => SpecificRoomsPage(
        roomType: state.params['roomType'],
      ),
    ),
    GoRoute(
      path: '/tv',
      builder: (context, state) => const TvPage(),
    ),
    GoRoute(
      path: '/lights',
      builder: (context, state) => const LightsPage(),
    ),

    // GoRoute(
    //     path: '/login',
    //     builder: (context, state) => const LoginPage(),
    //     routes: [
    //       GoRoute(
    //         path: 'new',
    //         builder: (context, state) => const TodosEdit(),
    //       ),
    //       GoRoute(
    //         path: ':id',
    //         builder: (context, state) => TodosEdit(
    //           todoId: state.params['id'],
    //         ),
    //       )
    //     ])
  ],
);
