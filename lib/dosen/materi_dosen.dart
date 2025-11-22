import 'package:flutter/material.dart';

class MateriDosenPage
    extends
        StatelessWidget {
  const MateriDosenPage({
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

                Row(
                  children: [
                    _rectangle(
                      width: 30,
                      height: 10,
                    ),
                    Spacer(),
                    _oval(
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Column(
                  children: [
                    _materiCard(),
                    SizedBox(
                      height: 5,
                    ),
                    _materiCard(),
                    SizedBox(
                      height: 5,
                    ),
                    _materiCard(),
                    SizedBox(
                      height: 5,
                    ),
                    _materiCard(),
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

  Widget _materiCard() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ), // jarak antar card
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        children: [
          // ------ BAGIAN ATAS ------
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(
                    10,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ICON FOTO
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                    ),
                    child: Icon(
                      Icons.image_outlined,
                      size: 50,
                      color: Colors.grey.shade700,
                    ),
                  ),

                  // DUA BULAT KANAN
                  Row(
                    children: [
                      // pop up update
                      Builder(
                        builder:
                            (
                              ctx,
                            ) => GestureDetector(
                              onTap: () => _showUpdatePopup(
                                ctx,
                              ),
                              child: _oval(
                                width: 26,
                                height: 26,
                                color: Colors.grey.shade500,
                              ),
                            ),
                      ),

                      const SizedBox(
                        width: 8,
                      ),
                      //pop up delete
                      Builder(
                        builder:
                            (
                              ctx,
                            ) => GestureDetector(
                              onTap: () => _showUpdatePopup(
                                ctx,
                              ),
                              child: _oval(
                                width: 26,
                                height: 26,
                                color: Colors.grey.shade500,
                              ),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ------ BAGIAN BAWAH ------
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //fungsi popup
  void _showUpdatePopup(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      barrierDismissible: true, // klik area gelap untuk menutup
      builder:
          (
            context,
          ) {
            return Dialog(
              backgroundColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(
                  20,
                ),
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Garis pendek atas
                    Container(
                      width: 80,
                      height: 3,
                      color: Colors.grey.shade700,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Garis panjang 1
                    _lineField(),
                    const SizedBox(
                      height: 15,
                    ),

                    // Garis panjang 2
                    _lineField(),
                    const SizedBox(
                      height: 15,
                    ),

                    // Garis panjang 3
                    _lineField(),
                    const SizedBox(
                      height: 15,
                    ),

                    // Garis panjang 4
                    _lineField(),
                    const SizedBox(
                      height: 25,
                    ),

                    // Tombol bawah kanan
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 60,
                        height: 30,
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
            );
          },
    );
  }

  Widget _lineField() {
    return Container(
      width: double.infinity,
      height: 22,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(
          20,
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
