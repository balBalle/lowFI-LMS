import 'package:flutter/material.dart';

class MateriMahasiswaPage
    extends
        StatelessWidget {
  const MateriMahasiswaPage({
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
          // ⬅️ DITAMBAHKAN
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
                    ),
                    _rectangle(
                      width: 40,
                      height: 40,
                    ),
                    _rectangle(
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                // ===== PAGE TITLE =====
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

                // ===== MAIN CONTENT =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.translate(
                      offset: const Offset(
                        20,
                        0,
                      ),
                      child: _circle(
                        25,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: _rectangle(
                          width: 350,
                          height: 120,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(
                        -20,
                        0,
                      ),
                      child: _circle(
                        25,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                // NAV BAR 5 KOTAK
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      _square(
                        15,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      _square(
                        15,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      _square(
                        15,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      _square(
                        15,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      _circle(
                        15,
                        color: Colors.grey.shade400,
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                _rowTwoBars(),
                const SizedBox(
                  height: 20,
                ),
                _alignTwoBars(),

                const SizedBox(
                  height: 10,
                ),

                _rectangle(
                  height: 120,
                ),

                const SizedBox(
                  height: 40,
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                        30,
                      ),
                      topRight: Radius.circular(
                        6,
                      ),
                      bottomLeft: Radius.circular(
                        6,
                      ),
                      bottomRight: Radius.circular(
                        6,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
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

  // ===== Helper untuk bar kiri-kanan =====
  Widget _rowTwoBars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _rectangle(
          width: 50,
          height: 20,
        ),
        Spacer(),
        _rectangle(
          width: 100,
          height: 20,
        ),
      ],
    );
  }

  Widget _alignTwoBars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _rectangle(
          width: 70,
          height: 15,
        ),
      ],
    );
  }

  Widget _square(
    double size, {
    Color? color,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color:
            color ??
            Colors.grey,
        borderRadius: BorderRadius.circular(
          3,
        ),
      ),
    );
  }

  Widget _circle(
    double size, {
    Color? color,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color:
            color ??
            Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
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
