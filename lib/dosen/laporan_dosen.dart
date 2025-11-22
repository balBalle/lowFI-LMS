import 'package:flutter/material.dart';

class LaporanDosenPage
    extends
        StatelessWidget {
  const LaporanDosenPage({
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
                    _rectangle(
                      width: 160,
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _rectangle(
                      width: 160,
                      height: 25,
                      radius: 90,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8,
                          ),
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _rectangle(
                      width: 160,
                      height: 25,
                      radius: 90,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8,
                          ),
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // ===== SKELETON TABLE =====
                    Container(
                      padding: const EdgeInsets.all(
                        16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                      child: Column(
                        children: [
                          // ================= HEADER =================
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _rectangle(
                                width: 30,
                                height: 18,
                                radius: 0,
                                color: Colors.grey.shade400,
                              ),
                              _rectangle(
                                width: 70,
                                height: 18,
                                radius: 0,
                                color: Colors.grey.shade400,
                              ),
                              _rectangle(
                                width: 70,
                                height: 18,
                                radius: 0,
                                color: Colors.grey.shade400,
                              ),
                              _rectangle(
                                width: 60,
                                height: 18,
                                radius: 0,
                                color: Colors.grey.shade400,
                              ),
                              _rectangle(
                                width: 50,
                                height: 18,
                                radius: 0,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 16,
                          ),

                          // ================= BODY (8 rows) =================
                          Column(
                            children: List.generate(
                              8,
                              (
                                index,
                              ) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 12,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _rectangle(
                                        width: 30,
                                        height: 10,
                                        radius: 0,
                                        color: Colors.grey.shade400,
                                      ),
                                      _rectangle(
                                        width: 70,
                                        height: 10,
                                        radius: 0,
                                        color: Colors.grey.shade400,
                                      ),
                                      _rectangle(
                                        width: 70,
                                        height: 10,
                                        radius: 0,
                                        color: Colors.grey.shade400,
                                      ),
                                      _rectangle(
                                        width: 60,
                                        height: 10,
                                        radius: 0,
                                        color: Colors.grey.shade400,
                                      ),
                                      _rectangle(
                                        width: 50,
                                        height: 10,
                                        radius: 0,
                                        color: Colors.grey.shade400,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        _oval(
                          width: 160,
                          height: 15,
                        ),
                        Spacer(),
                        _oval(
                          width: 90,
                          height: 15,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    skeletonUserList(),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Spacer(),
                        _rectangle(
                          width: 60,
                          height: 30,
                          radius: 0,
                        ),
                      ],
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

  // =======================================
  // =============== WIDGETS ===============
  // =======================================
  Widget skeletonUserList() {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Column(
        children: List.generate(
          3,
          (
            index,
          ) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Circle icon
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(
                        0xFF9E9E9E,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),

                  const SizedBox(
                    width: 16,
                  ),

                  // ==============================
                  //   BAR PROGRESS MENYATU
                  // ==============================
                  Expanded(
                    child: Stack(
                      children: [
                        // Background bar
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400.withOpacity(
                              0.7,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),

                        // Foreground bar (lebih pendek)
                        FractionallySizedBox(
                          widthFactor: 0.65, // panjang bar kiri
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // =======================================
  // =============== SHAPES ================
  // =======================================

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
    double radius = 10,
    Color? color,
    Widget? child,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:
            color ??
            Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: child,
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
