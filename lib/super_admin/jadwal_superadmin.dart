import 'package:flutter/material.dart';

class JadwalSuperadminPage
    extends
        StatelessWidget {
  const JadwalSuperadminPage({
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

                _oval(
                  width: 120,
                  height: 15,
                ),

                const SizedBox(
                  height: 20,
                ),

                // ===== BLOK SESUAI GAMBAR =====
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // KOTAK BESAR SEBELAH KIRI
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 114,
                        child: Container(
                          padding: const EdgeInsets.all(
                            12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _rectangle(
                                width: 190,
                                height: 6,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              _rectangle(
                                width: 160,
                                height: 6,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              _rectangle(
                                width: 130,
                                height: 6,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              _rectangle(
                                width: 90,
                                height: 6,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 12,
                    ),

                    // KOLOM TIGA KOTAK KECIL DI KANAN
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // BARIS 1 – Garis di tengah
                          Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 12,
                          ),

                          // BARIS 2 – Garis di tengah
                          Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 12,
                          ),

                          // BARIS 3 – Garis mulai dari kiri
                          Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: _rectangle(
                                width: 40,
                                height: 6,
                                color: Colors.grey.shade400,
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

                // content
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _oval(
                          width: 70,
                          height: 15,
                        ),
                        Spacer(),
                        _oval(
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _oval(
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    // ===== CARD BESAR =====
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // ===== GARIS KECIL =====
                    _rectangle(
                      width: 80,
                      height: 8,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Column(
                      children: List.generate(
                        4,
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
                                5,
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
