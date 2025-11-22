import 'package:flutter/material.dart';

class MatakuliahSuperadminPage
    extends
        StatelessWidget {
  const MatakuliahSuperadminPage({
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
              // ====================================
              //               TOP BAR
              // ====================================
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

              Row(
                children: [
                  const Spacer(),
                  _oval(
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(
                  16,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // === KOLOM KIRI ===
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        6,
                        (
                          _,
                        ) => Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: _rectangle(
                            width: 80,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    // === KOLOM TENGAH ===
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _rectangle(
                          width: 130,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 150,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 140,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 100,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 90,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 70,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),

                    const Spacer(),

                    // === KOLOM KANAN ===
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // baris 1 (oval panjang)
                        _oval(
                          width: 30,
                          height: 10,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // baris 2–6 (dua bulatan kecil)
                        for (
                          int i = 0;
                          i <
                              5;
                          i++
                        )
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                _oval(
                                  width: 10,
                                  height: 10,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                _oval(
                                  width: 10,
                                  height: 10,
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // ====================================
      //      BOTTOM NAVIGATION BAR
      // ====================================
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

  // =========================================
  //                 WIDGETS
  // =========================================

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
    double height = 10,
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
        ), // selalu oval
      ),
    );
  }
}
