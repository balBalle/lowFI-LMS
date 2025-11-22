import 'package:flutter/material.dart';
import 'package:lowfi/dosen/diskusi_dosen.dart';
import 'package:lowfi/dosen/laporan_dosen.dart';
import 'package:lowfi/dosen/mahasiswa_dosen.dart';
import 'package:lowfi/dosen/pengumuman_dosen.dart';
import 'package:lowfi/dosen/tugas_nilai_dosen.dart';
import 'package:lowfi/mahasiswa/dashboard_mahasiswa.dart';
import 'package:lowfi/super_admin/dashboard_superadmin.dart';
import 'package:lowfi/super_admin/dosen_superadmin.dart';
import 'package:lowfi/super_admin/jadwal_superadmin.dart';
import 'package:lowfi/super_admin/kelas_superadmin.dart';
import 'package:lowfi/super_admin/laporan_superadmin.dart';
import 'package:lowfi/super_admin/mahasiswa_superadmin.dart';
import 'package:lowfi/super_admin/matakuliah_superadmin.dart';
import 'package:lowfi/super_admin/pengumuman_superadmin.dart';
import 'auth/flash_screen.dart';
import 'auth/login_page.dart';
import 'auth/register_page.dart';
import 'auth/forgot_password_page.dart';
import 'package:lowfi/dosen/kelas_dosen.dart';
import 'package:lowfi/mahasiswa/jadwal_mahasiswa.dart';
import 'package:lowfi/mahasiswa/materi_mahasiswa.dart';
import 'package:lowfi/mahasiswa/tugas_ujian_mahasiswa.dart';
import 'package:lowfi/mahasiswa/tugas_ujian_mahasiswa2.dart';
import 'package:lowfi/mahasiswa/pengumuman_mahasiswa.dart';
import 'package:lowfi/mahasiswa/diskusi_mahasiswa.dart';
import 'package:lowfi/mahasiswa/chat_mahasiswa.dart';
import 'package:lowfi/dosen/dashboard_dosen.dart';
import 'package:lowfi/dosen/jadwal_dosen.dart';
import 'package:lowfi/dosen/materi_dosen.dart';

void
main() {
  runApp(
    MyApp(),
  );
}

class MyApp
    extends
        StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LowFI LMS',
      routes: {
        '/':
            (
              context,
            ) => FlashScreen(),

        //auth
        '/login':
            (
              context,
            ) => LoginPage(),
        '/register':
            (
              context,
            ) => RegisterPage(),
        '/forgot':
            (
              context,
            ) => ForgotPasswordPage(),

        // Mahasiswa
        '/dashboard_mahasiswa':
            (
              context,
            ) => DashboardMahasiswaPage(),
        '/jadwal_Mahasiswa':
            (
              context,
            ) => JadwalMahasiswaPage(),
        '/materi_Mahasiswa':
            (
              context,
            ) => MateriMahasiswaPage(),
        '/tugas_ujian_mahasiswa':
            (
              context,
            ) => TugasUjianMahasiswaPage(),
        '/tugas_ujian_mahasiswa2':
            (
              context,
            ) => TugasUjianMahasiswaPage2(),
        '/pengumuman_mahasiswa':
            (
              context,
            ) => PengumumanMahasiswaPage(),
        '/diskusi_mahasiswa':
            (
              context,
            ) => DiskusiMahasiswaPage(),
        '/chat_mahasiswa':
            (
              context,
            ) => ChatMahasiswaPage(),

        //dosen
        '/dashboard_dosen':
            (
              context,
            ) => const DashboardDosenPage(),
        '/kelas_dosen':
            (
              context,
            ) => const KelasDosenPage(),
        '/jadwal_dosen':
            (
              context,
            ) => const JadwalDosenPage(),
        '/mahasiswa_dosen':
            (
              context,
            ) => const MahasiswaDosenPage(),
        '/tugas_nilai_dosen':
            (
              context,
            ) => const TugasNilaiDosenPage(),
        '/materi_dosen':
            (
              context,
            ) => const MateriDosenPage(),
        '/laporan_dosen':
            (
              context,
            ) => const LaporanDosenPage(),
        '/pengumuman_dosen':
            (
              context,
            ) => const PengumumanDosenPage(),
        '/diskusi_dosen':
            (
              context,
            ) => const DiskusiDosenPage(),

        // super admin
        '/dashboard_super_admin':
            (
              context,
            ) => const DashboardSuperAdminPage(),
        '/dosen_super_admin':
            (
              context,
            ) => const DosenSuperadminPage(),
        '/mahasiswa_super_admin':
            (
              context,
            ) => const MahasiswaSuperadminPage(),
        '/kelas_super_admin':
            (
              context,
            ) => const KelasSuperadminPage(),
        '/jadwal_super_admin':
            (
              context,
            ) => const JadwalSuperadminPage(),
        '/matakuliah_super_admin':
            (
              context,
            ) => const MatakuliahSuperadminPage(),
        '/laporan_super_admin':
            (
              context,
            ) => const LaporanSuperadminPage(),
        '/pengumuman_super_admin':
            (
              context,
            ) => const PengumumanSuperadminPage(),
      },
    );
  }
}
