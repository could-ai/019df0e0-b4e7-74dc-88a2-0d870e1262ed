import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechNova Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        fontFamily: 'Roboto',
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 1,
            title: _NavBar(),
            centerTitle: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const _HeroSection(),
              const _FeaturesSection(),
              const _CallToActionSection(),
              const _FooterSection(),
            ]),
          ),
        ],
      ),
    );
  }
}

// --- Navigation Bar ---
class _NavBar extends StatelessWidget {
  const _NavBar();

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Row(
      children: [
        const Icon(Icons.ac_unit, color: Colors.blueAccent, size: 28),
        const SizedBox(width: 8),
        const Text(
          'TechNova',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const Spacer(),
        if (isDesktop) ...[
          const _NavItem(title: 'Beranda'),
          const _NavItem(title: 'Fitur'),
          const _NavItem(title: 'Harga'),
          const _NavItem(title: 'Kontak'),
          const SizedBox(width: 16),
        ],
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
          child: const Text('Mulai'),
        ),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  const _NavItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

// --- Hero Section ---
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 800;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? screenWidth * 0.1 : 24,
        vertical: 80,
      ),
      child: Flex(
        direction: isDesktop ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: isDesktop ? 1 : 0,
            child: Column(
              crossAxisAlignment:
                  isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
              children: [
                Text(
                  'Bangun Produk Hebat,\nLebih Cepat',
                  textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                  style: TextStyle(
                    fontSize: isDesktop ? 56 : 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Percepat kinerja tim Anda dengan fitur mutakhir yang dirancang untuk produktivitas maksimal dan kemudahan alur kerja.',
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
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      child: const Text('Coba Gratis'),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        side: const BorderSide(color: Colors.blueAccent),
                      ),
                      child: const Text('Pelajari Lebih Lanjut', style: TextStyle(color: Colors.blueAccent)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (isDesktop) const SizedBox(width: 60),
          if (!isDesktop) const SizedBox(height: 60),
          Expanded(
            flex: isDesktop ? 1 : 0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Center(
                child: Icon(Icons.devices, size: 120, color: Colors.blueAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// --- Features Section ---
class _FeaturesSection extends StatelessWidget {
  const _FeaturesSection();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 800;

    return Container(
      color: Colors.grey[50],
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? screenWidth * 0.1 : 24,
        vertical: 80,
      ),
      child: Column(
        children: [
          const Text(
            'Mengapa Memilih Kami?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Kami menyediakan solusi terbaik untuk mengembangkan bisnis Anda.',
            style: TextStyle(fontSize: 18, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              _FeatureCard(
                icon: Icons.speed,
                title: 'Sangat Cepat',
                description:
                    'Performa yang dioptimalkan untuk menjaga alur kerja Anda tetap lancar.',
              ),
              _FeatureCard(
                icon: Icons.security,
                title: 'Keamanan Tinggi',
                description:
                    'Keamanan level enterprise untuk melindungi data privasi Anda secara otomatis.',
              ),
              _FeatureCard(
                icon: Icons.analytics,
                title: 'Analitik Canggih',
                description:
                    'Dapatkan wawasan mendalam tentang metrik Anda dengan dasbor intuitif kami.',
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
      width: 300,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
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
              color: Colors.blue.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 32, color: Colors.blueAccent),
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
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

// --- Call To Action Section ---
class _CallToActionSection extends StatelessWidget {
  const _CallToActionSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Siap Meningkatkan Produktivitas Anda?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Bergabunglah dengan ribuan pengguna kami hari ini.',
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
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: const Text('Mulai Sekarang'),
          ),
        ],
      ),
    );
  }
}

// --- Footer Section ---
class _FooterSection extends StatelessWidget {
  const _FooterSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      color: Colors.black87,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.ac_unit, color: Colors.white, size: 24),
              SizedBox(width: 8),
              Text(
                'TechNova',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            '© 2026 TechNova Inc. Hak Cipta Dilindungi.',
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
