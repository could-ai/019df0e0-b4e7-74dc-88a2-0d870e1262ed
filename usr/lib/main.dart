import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SitusWeb Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        fontFamily: 'Roboto', // Font standar untuk web
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
      },
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengecek lebar layar untuk desain responsif
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 800;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        surfaceTintColor: Colors.transparent,
        title: Row(
          children: [
            const Icon(Icons.rocket_launch, color: Colors.blueAccent, size: 28),
            const SizedBox(width: 10),
            const Text(
              'SitusWeb',
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.black87,
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: isDesktop
            ? [
                _navItem('Beranda'),
                _navItem('Fitur'),
                _navItem('Harga'),
                _navItem('Kontak'),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      elevation: 0,
                    ),
                    child: const Text('Mulai Gratis'),
                  ),
                ),
                const SizedBox(width: 24),
              ]
            : [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black87),
                  onPressed: () {
                    // Tindakan saat menu hamburger diklik di versi mobile
                  },
                )
              ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HeroSection(isDesktop: isDesktop),
            _FeaturesSection(isDesktop: isDesktop),
            _CtaSection(),
            _FooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black87, 
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  final bool isDesktop;
  const _HeroSection({required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 24,
        vertical: isDesktop ? 100 : 60,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
      ),
      child: Flex(
        direction: isDesktop ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: isDesktop ? 1 : 0,
            child: Column(
              crossAxisAlignment: isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
              children: [
                Text(
                  'Bangun Kehadiran Digital Anda dengan Mudah',
                  textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                  style: TextStyle(
                    fontSize: isDesktop ? 52 : 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Kami menyediakan solusi modern untuk membangun antarmuka web yang sangat cepat, responsif, dan mudah diakses di seluruh perangkat layar.',
                  textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 40),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      child: const Text('Mulai Sekarang'),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                        side: const BorderSide(color: Colors.blueAccent),
                        foregroundColor: Colors.blueAccent,
                        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      child: const Text('Pelajari Lebih Lanjut'),
                    ),
                  ],
                )
              ],
            ),
          ),
          if (isDesktop) const SizedBox(width: 80),
          if (!isDesktop) const SizedBox(height: 50),
          Expanded(
            flex: isDesktop ? 1 : 0,
            child: Container(
              height: isDesktop ? 400 : 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.15),
                    blurRadius: 40,
                    offset: const Offset(0, 20),
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.dashboard_customize_rounded, size: 120, color: Colors.blue.shade100),
                  const Positioned(
                    bottom: 30,
                    child: Text(
                      'Ilustrasi Tampilan Web',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeaturesSection extends StatelessWidget {
  final bool isDesktop;
  const _FeaturesSection({required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 24,
        vertical: 100,
      ),
      child: Column(
        children: [
          const Text(
            'Fitur Unggulan',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Nikmati berbagai kemudahan dan teknologi terkini untuk mendukung kesuksesan produk Anda.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          const SizedBox(height: 60),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _FeatureCard(
                icon: Icons.speed,
                title: 'Performa Tinggi',
                description: 'Dioptimalkan untuk kecepatan pemuatan halaman yang instan tanpa jeda.',
              ),
              _FeatureCard(
                icon: Icons.devices,
                title: 'Desain Responsif',
                description: 'Tampilan secara otomatis beradaptasi dengan layar HP, tablet, maupun desktop.',
              ),
              _FeatureCard(
                icon: Icons.security,
                title: 'Aman & Tangguh',
                description: 'Dilengkapi dengan arsitektur tangguh untuk melindungi privasi pengguna.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 36, color: Colors.blueAccent),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _CtaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: Colors.blueAccent,
      child: Column(
        children: [
          const Text(
            'Siap Untuk Memulai?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Bergabunglah bersama ribuan pengguna lainnya yang telah merasakan manfaatnya.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              elevation: 0,
            ),
            child: const Text('Buat Akun Gratis'),
          ),
        ],
      ),
    );
  }
}

class _FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      color: Colors.grey.shade900,
      child: const Column(
        children: [
          Text(
            'SitusWeb',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '© 2026 SitusWeb. Seluruh hak cipta dilindungi.',
            style: TextStyle(color: Colors.white54, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
