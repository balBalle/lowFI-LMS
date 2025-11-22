import 'package:flutter/material.dart';
import 'package:lowfi/super_admin/dosen_superadmin.dart';
import 'package:lowfi/super_admin/jadwal_superadmin.dart';
import 'package:lowfi/super_admin/kelas_superadmin.dart';
import 'package:lowfi/super_admin/laporan_superadmin.dart';
import 'package:lowfi/super_admin/mahasiswa_superadmin.dart';
import 'package:lowfi/super_admin/matakuliah_superadmin.dart';
import 'package:lowfi/super_admin/pengumuman_superadmin.dart';

class DashboardSuperAdminPage
    extends
        StatelessWidget {
  const DashboardSuperAdminPage({
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
                  // foto/profile dummy
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
                height: 24,
              ),

              // ===== CARD BESAR =====
              Center(
                child: _rectangle(
                  width: 350,
                  height: 120,
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // ===== ICON GRID 1 =====
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const DosenSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const MahasiswaSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const KelasSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const JadwalSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              // ===== ICON GRID 2 =====
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const MatakuliahSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const LaporanSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const PengumumanSuperadminPage(),
                        ),
                      );
                    },
                    child: _menuItem(
                      size: 50,
                      labelHeight: 14,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),

              // ===== SLIDER BAR (dummy) =====
              _rectangle(
                width: 80,
                height: 20,
              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                width: double.infinity,
                height: 240,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    9,
                    (
                      i,
                    ) {
                      // Kolom
                      if (i %
                              2 ==
                          0) {
                        return Column(
                          children: [
                            Container(
                              width: 60,
                              height: 16,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(
                                  4,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        );
                      }

                      // Garis di antaranya
                      return Container(
                        width: 1,
                        color: Colors.black,
                      );
                    },
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

      // ===== BOTTOM NAVIGATION LOW-FI =====
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
            _rectangle(
              width: 28,
              height: 28,
            ),
            _rectangle(
              width: 28,
              height: 28,
            ),
            _rectangle(
              width: 28,
              height: 28,
            ),
            _rectangle(
              width: 28,
              height: 28,
            ),
          ],
        ),
      ),
    );
  }

  // ===========================
  // ========= WIDGETS==========
  // ===========================
  Widget _menuItem({
    required double size,
    required double labelHeight,
  }) {
    return Column(
      children: [
        // Kotak icon
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
        ),

        const SizedBox(
          height: 6,
        ),

        // Kotak rectangle kecil (tempat label low-fi)
        Container(
          width: size,
          height: labelHeight,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }

  // ===== LOW-FI SHAPES =====
  Widget _rectangle({
    double width = 100,
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
