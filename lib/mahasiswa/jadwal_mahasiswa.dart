import 'package:flutter/material.dart';

class JadwalMahasiswaPage
    extends
        StatelessWidget {
  const JadwalMahasiswaPage({
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
                height: 40,
              ),

              // ======= CARD BESAR DENGAN PILL KIRI & KANAN =======
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Pill kiri (kecil, rounded)
                    Positioned(
                      top: -20,
                      left: 0,
                      child: _pillSmall(
                        width: 60,
                        height: 14,
                      ),
                    ),

                    // Pill kanan
                    Positioned(
                      top: -20,
                      right: 0,
                      child: _pillSmall(
                        width: 60,
                        height: 14,
                      ),
                    ),

                    // Card besar
                    _rectangle(
                      width: 350,
                      height: 200,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              // ===== LIST KELAS (UPDATED SESUAI GAMBAR) =====
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                  separatorBuilder:
                      (
                        _,
                        __,
                      ) => const SizedBox(
                        height: 18,
                      ),
                  itemBuilder:
                      (
                        context,
                        index,
                      ) {
                        return _kelasItem(); // <-- card list diganti benar
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

  // =============== LIST ITEM SESUAI GAMBAR ===============
  Widget _kelasItem() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            22,
          ),
        ),
      ),
      child: Row(
        children: [
          // area kosong low-fi
          Expanded(
            child: Container(),
          ),

          // kotak kecil sebelah kanan
          Container(
            width: 65,
            height: 65,
            margin: const EdgeInsets.only(
              right: 7,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
        ],
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

  Widget _pillSmall({
    double width = 60,
    double height = 14,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
    );
  }
}
