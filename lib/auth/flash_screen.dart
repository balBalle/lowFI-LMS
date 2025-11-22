import 'package:flutter/material.dart';

class FlashScreen
    extends
        StatefulWidget {
  const FlashScreen({
    super.key,
  });
  @override
  // ignore: library_private_types_in_public_api
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState
    extends
        State<
          FlashScreen
        > {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
        Navigator.pushReplacementNamed(
          // ignore: use_build_context_synchronously
          context,
          '/login',
        );
      },
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
