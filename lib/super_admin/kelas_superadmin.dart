import 'package:flutter/material.dart';

class KelasSuperadminPage
    extends
        StatelessWidget {
  const KelasSuperadminPage({
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
                  height: 40,
                ),

                Row(
                  children: [
                    _rectangle(
                      width: 60,
                      height: 20,
                    ),
                    const Spacer(),

                    GestureDetector(
                      onTap: () {
                        _showEditPopup(
                          context,
                        );
                      },
                      child: _oval(
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ],
                ),

                // ===== GRID KOTAK KELAS =====
                const SizedBox(
                  height: 30,
                ),

                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 12, // jumlah item dummy
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.82,
                  ),
                  itemBuilder:
                      (
                        _,
                        index,
                      ) {
                        return _kelasCard(
                          context,
                        );
                      },
                ),
              ],
            ),
          ),
        ),
      ),

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

  // ===============================
  // ========= WIDGETS =============
  // ===============================

  Widget _kelasCard(
    BuildContext context,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        children: [
          // ==========================
          // BAGIAN ATAS (ABU TUA)
          // ==========================
          Container(
            height: 90, // FIX HEIGHT supaya tidak melebar
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                  12,
                ),
              ),
            ),
            child: Stack(
              children: [
                // ICON GAMBAR DI TENGAH
                Center(
                  child: Icon(
                    Icons.image_outlined,
                    size: 40,
                    color: Colors.grey.shade700,
                  ),
                ),

                // BULATAN KIRI
                Positioned(
                  left: 10,
                  top: 10,
                  child: _oval(
                    width: 18,
                    height: 18,
                    color: Colors.grey.shade500,
                  ),
                ),

                // BULATAN KANAN
                Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                    onTap: () {
                      _showEditPopup(
                        context,
                      );
                    },
                    child: _oval(
                      width: 18,
                      height: 18,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ==========================
          // BAGIAN BAWAH (ABU MUDA)
          // ==========================
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(
                  12,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _rectangle(
                  height: 10,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 6,
                ),
                _rectangle(
                  height: 10,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 6,
                ),
                _rectangle(
                  height: 10,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================
  // ======= SQUARE =============
  // ============================
  Widget _rectangleOutlined({
    double height = 20,
    double borderRadius = 8,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        border: Border.all(
          color: Colors.grey.shade600,
          width: 1.5,
        ),
      ),
    );
  }

  Widget _rectangleWithOval({
    double height = 20,
    double borderRadius = 8,
  }) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        border: Border.all(
          color: Colors.grey.shade600,
          width: 1.5,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 40,
          height:
              height /
              2,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(
              40,
            ),
          ),
        ),
      ),
    );
  }

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

  void _showEditPopup(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder:
          (
            _,
          ) {
            return Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(
                    24,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(
                      22,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1–3 rectangle outlined
                      _rectangleOutlined(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      _rectangleOutlined(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      _rectangleOutlined(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      // 4th rectangle — outlined + oval di dalam
                      _rectangleWithOval(
                        height: 25,
                      ),

                      const SizedBox(
                        height: 24,
                      ),

                      // Bottom bar
                      Row(
                        children: [
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: _rectangle(
                              width: 60,
                              height: 25,
                              color: Colors.grey.shade400,
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
