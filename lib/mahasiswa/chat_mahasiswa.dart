import 'package:flutter/material.dart';

class ChatMahasiswaPage
    extends
        StatelessWidget {
  const ChatMahasiswaPage({
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
                height: 20,
              ),

              // ===== PROFILE + STATUS BAR LOW-FI =====
              Row(
                children: [
                  // Lingkaran abu-abu
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(
                    width: 14,
                  ),

                  // Garis panjang abu
                  Container(
                    width: 180,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // ===== LIST CHAT LOW-FI =====
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // CHAT 1 (KIRI)
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 240,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  width: 20,
                                  height: 4,
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // CHAT 2 (KANAN)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 220,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: 20,
                                height: 4,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // CHAT 3 (KIRI)
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 250,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: 20,
                                height: 4,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // CHAT 4 (KANAN)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 230,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: 20,
                                height: 4,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // CHAT 5 (KIRI)
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 260,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: 20,
                                height: 4,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
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
}
