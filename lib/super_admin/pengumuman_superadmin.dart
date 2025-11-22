import 'package:flutter/material.dart';

class PengumumanSuperadminPage
    extends
        StatelessWidget {
  const PengumumanSuperadminPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
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
                height: 20,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showEditPopup(
                        context,
                      );
                    },
                    child: _circle(
                      30,
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      showEditPopup(
                        context,
                      );
                    },
                    child: _circle(
                      30,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              _rectangle(
                width: 70,
                height: 10,
              ),

              const SizedBox(
                height: 20,
              ),

              Column(
                children: List.generate(
                  8,
                  (
                    index,
                  ) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Garis horizontal
                        Container(
                          width: double.infinity,
                          height: 2,
                          color: Colors.grey.shade300,
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        // Titik kecil + lingkaran + garis panjang
                        Row(
                          children: [
                            // Titik kecil
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                shape: BoxShape.circle,
                              ),
                            ),

                            const SizedBox(
                              width: 10,
                            ),

                            // Lingkaran lebih besar
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                shape: BoxShape.circle,
                              ),
                            ),

                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        if (index ==
                            7)
                          Container(
                            width: double.infinity,
                            height: 2,
                            color: Colors.grey.shade300,
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
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

  Widget _square(
    double size,
  ) {
    return Container(
      width: size,
      height: size,
      color: Colors.grey.shade300,
    );
  }

  Widget _rectangle({
    double width = double.infinity,
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

  Widget _oval({
    double width = 60,
    double height = 40,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          height,
        ),
      ),
    );
  }

  void showEditPopup(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder:
          (
            context,
          ) {
            return Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: 260,
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Garis atas utama
                      Container(
                        width: 120,
                        height: 4,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // ====== 3 Input ======
                      ...List.generate(
                        3,
                        (
                          _,
                        ) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  height: 4,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  height: 26,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      // ====== Progress Bar ======
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 4,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 6,
                          ),

                          Container(
                            height: 26,
                            padding: const EdgeInsets.all(
                              4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade500,
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // ====== TOMBOL TUTUP ======
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                context,
                              ); // TUTUP POPUP
                            },
                            child: Container(
                              width: 60,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
    );
  }
}
