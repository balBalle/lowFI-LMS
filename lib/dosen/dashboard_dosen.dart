import 'package:flutter/material.dart';
import 'package:lowfi/dosen/diskusi_dosen.dart';
import 'package:lowfi/dosen/laporan_dosen.dart';
import 'package:lowfi/dosen/materi_dosen.dart';
import 'package:lowfi/dosen/kelas_dosen.dart';
import 'package:lowfi/dosen/jadwal_dosen.dart';
import 'package:lowfi/dosen/mahasiswa_dosen.dart';
import 'package:lowfi/dosen/pengumuman_dosen.dart';
import 'package:lowfi/dosen/tugas_nilai_dosen.dart';

class DashboardDosenPage
    extends
        StatelessWidget {
  const DashboardDosenPage({
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
                              ) => const KelasDosenPage(),
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
                              ) => const JadwalDosenPage(),
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
                              ) => const MahasiswaDosenPage(),
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
                              ) => const TugasNilaiDosenPage(),
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
                              ) => const MateriDosenPage(),
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
                              ) => const LaporanDosenPage(),
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
                              ) => const PengumumanDosenPage(),
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
                              ) => const DiskusiDosenPage(),
                        ),
                      );
                    },
                    child: _rectangle(
                      width: 50,
                      height: 50,
                    ),
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
