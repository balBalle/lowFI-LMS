import 'package:flutter/material.dart';

class RegisterPage
    extends
        StatelessWidget {
  const RegisterPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(
              24,
            ),
            child: Column(
              children: [
                // Top small icon
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

                // Profile circle
                _circle(
                  90,
                ),

                const SizedBox(
                  height: 32,
                ),

                // 6 Input placeholders
                for (
                  int i = 0;
                  i <
                      6;
                  i++
                ) ...[
                  _rectangle(
                    width: double.infinity,
                    height: 35,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],

                // Checkbox placeholder
                Align(
                  alignment: Alignment.centerLeft,
                  child: _rectangle(
                    width: 16,
                    height: 16,
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                // Large button
                _rectangle(
                  width: double.infinity,
                  height: 40,
                ),

                const SizedBox(
                  height: 16,
                ),

                // Split line
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 30,
                      height: 10,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 16,
                ),

                // Bottom wide button
                _rectangle(
                  width: double.infinity,
                  height: 32,
                ),
              ],
            ),
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
