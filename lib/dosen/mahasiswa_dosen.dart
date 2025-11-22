import 'package:flutter/material.dart';

class MahasiswaDosenPage
    extends
        StatelessWidget {
  const MahasiswaDosenPage({
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
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== TOP BAR =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _oval(
                      width: 60,
                      height: 40,
                    ), // foto/profile dummy
                    _rectangle(
                      width: 40,
                      height: 40,
                    ), // kotak tengah
                    _rectangle(
                      width: 24,
                      height: 24,
                    ), // icon kanan
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _oval(
                      width: 140,
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // === RECTANGLE + OVAL DI DALAM KANAN ===
                    Stack(
                      children: [
                        _rectangle(
                          width: double.infinity,
                          height: 25,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8,
                              ),
                              child: _oval(
                                width: 15,
                                height: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // === RECTANGLE + OVAL DI DALAM KANAN 2 ===
                    Stack(
                      children: [
                        _rectangle(
                          width: double.infinity,
                          height: 25,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8,
                              ),
                              child: _oval(
                                width: 15,
                                height: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Column(
                      children: List.generate(
                        13,
                        (
                          row,
                        ) {
                          return Container(
                            margin: const EdgeInsets.only(
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  row ==
                                      0
                                  ? Colors.grey.shade300
                                  : Colors.white, // <-- BARIS 1 BERBEDA
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: List.generate(
                                4,
                                (
                                  col,
                                ) {
                                  return Expanded(
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                            color:
                                                col ==
                                                    4
                                                ? Colors.transparent
                                                : Colors.grey.shade400,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      // ===== BOTTOM NAVIGATION BAR =====
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(
                context,
              ),
              child: _square(
                28,
              ),
            ),
            _square(
              28,
            ),
            _square(
              28,
            ),
            _square(
              28,
            ),
          ],
        ),
      ),
    );
  }

  // =============== SHAPES ===============

  Widget _square(
    double size, {
    Color? color,
  }) {
    return Container(
      width: size,
      height: size,
      color:
          color ??
          Colors.grey.shade300,
    );
  }

  Widget _rectangle({
    double width = double.infinity,
    double height = 20,
    Color? color,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:
            color ??
            Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
    );
  }

  Widget _oval({
    double width = 60,
    double height = 40,
    Color? color,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:
            color ??
            Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          height,
        ),
      ),
    );
  }
}
