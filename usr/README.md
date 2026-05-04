# SitusWeb Landing Page

Aplikasi ini adalah contoh **Landing Page Website** modern yang dibangun menggunakan Flutter Web. Desain difokuskan pada antarmuka yang bersih, profesional, serta sepenuhnya responsif sehingga tampak hebat di peramban (browser) desktop, tablet, maupun seluler.

## Gambaran Produk

Proyek ini menghadirkan struktur landing page yang langsung siap pakai:
- **Navigasi Atas (Navbar):** Menu yang menyesuaikan (hamburger menu di mobile, tautan horizontal di desktop).
- **Bagian Hero (Hero Section):** Headline besar, deskripsi, dan tombol ajakan bertindak (Call to Action).
- **Fitur Unggulan:** Kartu-kartu yang menyoroti poin penjualan dan kapabilitas aplikasi.
- **Ajakan Bertindak (CTA):** Memancing pengguna untuk mendaftar atau mencoba layanan.
- **Kaki Halaman (Footer):** Informasi hak cipta dan merek dasar.

## Tumpukan Teknologi (Tech Stack)

- **Flutter:** Framework antarmuka pengguna lintas platform.
- **Dart:** Bahasa pemrograman utama.
- **Material 3:** Sistem desain untuk komponen yang elegan.

## Cara Menjalankan

Karena fokus aplikasi ini adalah Web, Anda sangat disarankan untuk menjalankannya melalui platform Chrome atau platform web lainnya.

1. **Pastikan Web Terpasang:**
   Pastikan Anda mengaktifkan dukungan web di Flutter:
   ```bash
   flutter config --enable-web
   ```

2. **Jalankan Aplikasi:**
   Ketik perintah berikut pada terminal di akar repositori Anda:
   ```bash
   flutter run -d chrome
   ```

3. **Membangun untuk Produksi Web:**
   Jika ingin melakukan kompilasi web untuk hosting, gunakan:
   ```bash
   flutter build web
   ```
   Aplikasi yang dikompilasi dapat ditemukan di dalam direktori `build/web/`.

---

## Tentang CouldAI
Aplikasi ini dibuat dengan [CouldAI](https://could.ai), sebuah pembangun aplikasi AI lintas platform yang mengubah perintah tertulis (prompt) menjadi aplikasi asli siap produksi untuk iOS, Android, Web, dan Desktop. Agen AI otonom dari CouldAI melakukan arsitektur, membangun, menguji, mendeploy, dan melakukan iterasi pada aplikasi secara mulus.