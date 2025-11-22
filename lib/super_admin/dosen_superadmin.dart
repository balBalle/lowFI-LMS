import 'package:flutter/material.dart';

class DosenSuperadminPage
    extends
        StatelessWidget {
  const DosenSuperadminPage({
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
                height: 40,
              ),

              _rectangle(
                width: 60,
                height: 20,
              ),

              const SizedBox(
                height: 20,
              ),

              // ===== LIST ITEM (4 BARIS) =====
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  4,
                  (
                    index,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 14,
                      ),
                      child: Container(
                        width:
                            (index ==
                                0)
                            ? double.infinity
                            : 160,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            4,
                          ),
                        ),
                        child: Row(
                          children: [
                            _squareWithX(
                              28,
                            ),
                            const SizedBox(
                              width: 12,
                            ),

                            // === BARIS 1: panjang penuh
                            if (index ==
                                0)
                              Expanded(
                                child: _rectangle(
                                  height: 18,
                                ),
                              )
                            // === BARIS 2,3,4: panjang mengikuti card 160 px
                            else
                              Expanded(
                                child: _rectangle(
                                  height: 18,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // ===== CARD BESAR =====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ===== COLUMN 1 =====
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _rectangle(
                          width: 80,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                      ],
                    ),

                    // ===== COLUMN 2 =====
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _rectangle(
                          width: 80,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                      ],
                    ),

                    // ===== COLUMN 3 =====
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _rectangle(
                          width: 80,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        _rectangle(
                          width: 120,
                          height: 16,
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

// =============================
// WIDGET: Kotak dengan tanda X
// =============================
Widget
_squareWithX(
  double size,
) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: CustomPaint(
      painter: XIconPainter(),
    ),
  );
}

// =============================
// PAINTER: Menggambar tanda X
// =============================
class XIconPainter
    extends
        CustomPainter {
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    canvas.drawLine(
      Offset(
        0,
        0,
      ),
      Offset(
        size.width,
        size.height,
      ),
      paint,
    );
    canvas.drawLine(
      Offset(
        size.width,
        0,
      ),
      Offset(
        0,
        size.height,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) => false;
}
