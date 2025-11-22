import 'package:flutter/material.dart';
import 'package:lowfi/mahasiswa/diskusi_mahasiswa.dart';
import 'package:lowfi/mahasiswa/kelas_mahasiswa.dart';
import 'package:lowfi/mahasiswa/jadwal_mahasiswa.dart';
import 'package:lowfi/mahasiswa/materi_mahasiswa.dart';
import 'package:lowfi/mahasiswa/pengumuman_mahasiswa.dart';
import 'package:lowfi/mahasiswa/tugas_ujian_mahasiswa.dart';

class DashboardMahasiswaPage
    extends
        StatelessWidget {
  const DashboardMahasiswaPage({
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
                  // Navigasi ke halaman kelas
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const KelasMahasiswaPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
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
                              ) => const JadwalMahasiswaPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
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
                              ) => const MateriMahasiswaPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
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
                              ) => const TugasUjianMahasiswaPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
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
                              ) => const PengumumanMahasiswaPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => const DiskusiMahasiswaPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Spacer(),
                  _rectangle(
                    width: 50,
                    height: 50,
                  ),
                  Spacer(),
                  // Tambahan agar sejajar dengan grid pertama
                  SizedBox(
                    width: 50,
                    height: 50,
                  ), // kotak kosong
                ],
              ),

              const SizedBox(
                height: 24,
              ),

              // ===== SLIDER BAR (dummy) =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _rectangle(
                    width: 80,
                    height: 10,
                  ),
                  _rectangle(
                    width: 80,
                    height: 10,
                  ),
                ],
              ),

              const SizedBox(
                height: 24,
              ),

              // ===== CARD BESAR 2 =====
              _rectangle(
                width: double.infinity,
                height: 240,
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
