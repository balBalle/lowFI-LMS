import 'package:flutter/material.dart';

class KelasDosenPage
    extends
        StatelessWidget {
  const KelasDosenPage({
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
                  _oval(
                    width: 40,
                    height: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  _oval(
                    width: 10,
                    height: 10,
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              // ===== CARD ATAS  =====
              Container(
                padding: const EdgeInsets.all(
                  16,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Avatar
                        _oval(
                          width: 40,
                          height: 40,
                          color: Colors.grey.shade400,
                        ),

                        const SizedBox(
                          width: 16,
                        ),

                        // Teks panjang — selaras vertikal dengan avatar
                        Align(
                          alignment: Alignment.center,
                          child: _rectangle(
                            width: 120,
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: _rectangle(
                        width: 40,
                        height: 10,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // ===== SECTION FORM 1 =====
              formCard1(),

              // Spacer
              const SizedBox(
                height: 5,
              ),

              // ===== SECTION FORM 2 =====
              formCard2(),

              // Spacer
              const SizedBox(
                height: 5,
              ),

              // ===== SECTION FORM 3 (dengan 2 input horizontal) =====
              formCard3(),
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

  // =============================================================
  // ======================== WIDGETS ============================
  // =============================================================

  // ========================= FORM CARD 1 =========================
  Widget formCard1() {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          _rectangle(
            width: 120,
            height: 10,
            color: Colors.grey.shade400,
          ),

          const SizedBox(
            height: 16,
          ),

          // ===== Input 1 =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
            child: Center(
              child: Container(
                height: 1.5,
                color: Colors.grey.shade600,
              ),
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          // ===== Input 2 =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
            child: Center(
              child: Container(
                height: 1.5,
                color: Colors.grey.shade600,
              ),
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          // ===== Input 3 (dropdown) =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
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
            height: 12,
          ),

          // ===== Upload file input =====
          Container(
            height: 30,
            child: Row(
              children: [
                // ===== Bagian kiri putih kecil =====
                Container(
                  width: 60,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Center(
                    child: Container(
                      height: 2,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          4,
                        ),
                        bottomRight: Radius.circular(
                          4,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 16,
          ),

          // ===== Button kanan bawah =====
          Align(
            alignment: Alignment.bottomRight,
            child: _rectangle(
              width: 40,
              height: 25,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }

  // ========================= FORM CARD 2 =========================
  Widget formCard2() {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          _rectangle(
            width: 120,
            height: 10,
            color: Colors.grey.shade400,
          ),

          const SizedBox(
            height: 16,
          ),

          // ===== Input 1 =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
            child: Center(
              child: Container(
                height: 1.5,
                color: Colors.grey.shade600,
              ),
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          // ===== Input 2 (dropdown) =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
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
            height: 12,
          ),

          Container(
            height: 30,
            child: Row(
              children: [
                // ===== Bagian kiri putih kecil =====
                Container(
                  width: 60,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Center(
                    child: Container(
                      height: 2,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          4,
                        ),
                        bottomRight: Radius.circular(
                          4,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 16,
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: _rectangle(
              width: 40,
              height: 25,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }

  // ========================= FORM CARD 3 =========================
  Widget formCard3() {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          _rectangle(
            width: 120,
            height: 10,
            color: Colors.grey.shade400,
          ),

          const SizedBox(
            height: 16,
          ),

          // ===== Input 1 =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
            child: Center(
              child: Container(
                height: 1.5,
                color: Colors.grey.shade600,
              ),
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          // ===== Input 2 (dropdown) =====
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                4,
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
            height: 12,
          ),

          // ===== Input Time Row =====
          Row(
            children: [
              // ========= TIME 1 =========
              Expanded(
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.all(
                    8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter, // << ini bikin abu nempel bawah
                    child: Container(
                      height: 25,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(
                          4,
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
                            width: 12,
                          ),

                          Icon(
                            Icons.alarm,
                            size: 17,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                width: 16,
              ),

              // ========= TIME 2 =========
              // ========= TIME 1 =========
              Expanded(
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.all(
                    8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter, // << ini bikin abu nempel bawah
                    child: Container(
                      height: 25,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(
                          4,
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
                            width: 12,
                          ),

                          Icon(
                            Icons.alarm,
                            size: 17,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 16,
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: _rectangle(
              width: 40,
              height: 25,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // ====================== SHAPES ==============================
  // ============================================================

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
