import 'package:flutter/material.dart';

class ForgotPasswordPage
    extends
        StatelessWidget {
  const ForgotPasswordPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: _circle(
                      28,
                    ),
                  ),
                  _rectangle(
                    width: 60,
                    height: 20,
                  ),
                ],
              ),

              const SizedBox(
                height: 32,
              ),

              // BIG circle
              Center(
                child: _circle(
                  90,
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Short input placeholder
              Center(
                child: _rectangle(
                  width: 200,
                  height: 22,
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // Shorter input placeholder
              Center(
                child: _rectangle(
                  width: 150,
                  height: 22,
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              Center(
                child: _rectangle(
                  width: 200,
                  height: 22,
                ),
              ),

              const SizedBox(
                height: 28,
              ),

              // Large button 1
              _rectangle(
                width: double.infinity,
                height: 40,
              ),

              const SizedBox(
                height: 16,
              ),

              // Large button 2
              _rectangle(
                width: double.infinity,
                height: 40,
              ),

              const SizedBox(
                height: 16,
              ),

              Center(
                child: _rectangle(
                  width: 200,
                  height: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rectangle({
    double width = 100,
    double height = 20,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
    );
  }

  Widget _circle(
    double size,
  ) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }
}
