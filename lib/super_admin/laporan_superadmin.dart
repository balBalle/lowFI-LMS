import 'package:flutter/material.dart';

class LaporanSuperadminPage
    extends
        StatelessWidget {
  const LaporanSuperadminPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ===== BODY =====
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

                _rectangle(
                  width: 160,
                  height: 20,
                  color: Colors.grey.shade300,
                ),

                const SizedBox(
                  height: 20,
                ),

                // ===========================
                // ===== CARD BESAR ATAS =====
                // ===========================
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
                        width: 45,
                      ),
                      // === KOLOM TENGAH ===
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Baris 1 kosong (20px)
                          const SizedBox(
                            height: 20,
                          ),

                          // Baris 2
                          _rectangle(
                            width: 150,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 3
                          _rectangle(
                            width: 140,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 4
                          _rectangle(
                            width: 100,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 5
                          _rectangle(
                            width: 90,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 6
                          _rectangle(
                            width: 70,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),

                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Baris 1 kosong
                          const SizedBox(
                            height: 20,
                          ),

                          // Baris 2
                          _rectangle(
                            width: 80,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 3
                          _rectangle(
                            width: 80,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 4
                          _rectangle(
                            width: 80,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 5
                          _rectangle(
                            width: 80,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // Baris 6
                          _rectangle(
                            width: 80,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                _rectangle(
                  width: 160,
                  height: 20,
                ),

                const SizedBox(
                  height: 10,
                ),

                Container(
                  width: 120,
                  height: 25,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1.5,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  width: 120,
                  height: 25,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1.5,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                ),

                // ===============================
                // ======== TABEL SKELETON ========
                // ===============================
                const SizedBox(
                  height: 20,
                ),

                // Header tabel
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
                  child: Column(
                    children: [
                      // Baris header
                      Row(
                        children: [
                          _rectangle(
                            width: 20,
                            height: 20,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: _rectangle(
                              height: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: _rectangle(
                              height: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: _rectangle(
                              height: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: _rectangle(
                              height: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      // Garis pembatas
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      // ====== LIST BARIS TABEL (10 baris) ======
                      Column(
                        children: List.generate(
                          10,
                          (
                            index,
                          ) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                bottom: 12,
                              ),
                              child: Row(
                                children: [
                                  _rectangle(
                                    width: 20,
                                    height: 14,
                                    color: Colors.grey.shade400,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: _rectangle(
                                      height: 14,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: _rectangle(
                                      height: 14,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: _rectangle(
                                      height: 14,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: _rectangle(
                                      height: 14,
                                      color: Colors.grey.shade400,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    _rectangle(
                      width: 160,
                      height: 20,
                    ),
                    Spacer(),
                    _rectangle(
                      width: 90,
                      height: 20,
                    ),
                  ],
                ),

                // =====================================
                // ======== LIST 3 ROW SKELETON ========
                // =====================================
                const SizedBox(
                  height: 20,
                ),

                Card(
                  color: Colors.grey.shade300,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      children: List.generate(
                        3,
                        (
                          index,
                        ) {
                          double progress = 0.40; // 40%

                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 24,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ========== AVATAR ==========
                                _oval(
                                  width: 45,
                                  height: 45,
                                  color: Colors.grey.shade400,
                                ),

                                const SizedBox(
                                  width: 16,
                                ),

                                // ========== KOLOM KANAN ==========
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // ==== BAGIAN ATAS (ROW) ====
                                      Row(
                                        children: [
                                          // Rect kiri
                                          _rectangle(
                                            width: 120,
                                            height: 18,
                                            color: Colors.grey.shade500,
                                          ),

                                          const Spacer(),

                                          // Rect kanan
                                          _rectangle(
                                            width: 90,
                                            height: 18,
                                            color: Colors.grey.shade400,
                                          ),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 10,
                                      ),

                                      // ===== PROGRESS BAR =====
                                      Container(
                                        height: 8, // lebih kecil
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade400, // background bar
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                        child: FractionallySizedBox(
                                          alignment: Alignment.centerLeft,
                                          widthFactor: progress, // 40%
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade600, // warna progres
                                              borderRadius: BorderRadius.circular(
                                                6,
                                              ),
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
                  ),
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
