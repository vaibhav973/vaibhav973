import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

GoRouter _appRoute = GoRouter(routes: <RouteBase>[

  /* HomeScreen Router */
  GoRoute(
    path: "/",
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
  ),

  /* Profile Router    */
  GoRoute(
    path: "/profile",
    builder: (BuildContext context, GoRouterState state) {
      return const Profile();
    },
  ),

  /* Help Router      */
  GoRoute(
    path: "/help",
    builder: (BuildContext context, GoRouterState state) {
      return const Help();
    },
  ),

]);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRoute,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build the UI for the home screen
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
      ),
      body: const Center(
        child: Text("Help"),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build the UI for the profile screen
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Center(
        child: Text("Profile"),
      ),
    );
  }
}