import 'package:flutter/material.dart';

class TugasUjianMahasiswaPage2
    extends
        StatelessWidget {
  const TugasUjianMahasiswaPage2({
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

              // ===== PAGE TITLE (LINGKARAN LOW-FI) =====
              GestureDetector(
                onTap: () => Navigator.pop(
                  context,
                ),
                child: _circle(
                  30,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // ====== ELEMENTS BELOW PAGE TITLE ======
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bar 1 + Dot 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _rectangle(
                        width: 250,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ), // jarak bar ke dot
                      _circle(
                        20,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // Bar 2 + Dot 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _rectangle(
                        width: 250,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ), // jarak bar ke dot
                      _circle(
                        20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // ===== TABEL 3 KOLOM (SESUAI GAMBAR) =====
                  Column(
                    children: List.generate(
                      8,
                      (
                        index,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
            _square(
              28,
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
}
