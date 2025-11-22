import 'package:flutter/material.dart';
import 'register_page.dart';
import 'forgot_password_page.dart';
import 'package:lowfi/mahasiswa/dashboard_mahasiswa.dart';
import 'package:lowfi/dosen/dashboard_dosen.dart';
import 'package:lowfi/super_admin/dashboard_superadmin.dart';

class LoginPage
    extends
        StatelessWidget {
  const LoginPage({
    super.key,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ===== LOGO (LOW-FI PLACEHOLDER) =====
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(
                height: 30,
              ),

              // Input Email (LOW-FI)
              _lofiBox(
                height: 48,
              ),
              SizedBox(
                height: 14,
              ),

              // Input Password (LOW-FI)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            _,
                          ) => DashboardSuperAdminPage(),
                    ),
                  );
                },
                child: _lofiBox(
                  height: 45,
                ),
              ),
              SizedBox(
                height: 14,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (
                              _,
                            ) => ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 10,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            _,
                          ) => DashboardMahasiswaPage(),
                    ),
                  );
                },
                child: _lofiBox(
                  height: 45,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 30,
                    height: 10,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // untuk masuk dashboard dosen
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            _,
                          ) => DashboardDosenPage(),
                    ),
                  );
                },
                child: _lofiBox(
                  height: 45,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            _,
                          ) => RegisterPage(),
                    ),
                  );
                },
                child: Container(
                  width: 180,
                  height: 12,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _lofiBox({
    required double height,
  }) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
    );
  }
}
