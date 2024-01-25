# Cinemania

Cinemania adalah sebuah aplikasi mobile yang menyediakan informasi tentang Movie dan Tv Show. Dengan Cinemania, pengguna dapat dengan mudah menjelajahi berbagai Movie dan Tv Show. Aplikasi ini menggunakan teknologi Flutter, memastikan antarmuka pengguna yang responsif dan pengalaman pengguna yang mulus.

## Fitur utama Cinemania:

- Penjelajahan Movie dan TVShow: Akses daftar Movie dan TV Show, jelajahi berdasarkan popularitas, atau kategori lainnya.
- Detail Informasi: Dapatkan informasi tentang Movie atau Tv Show tertentu.
- Watchlist: Tambahkan Movie atau TV Show favorit Anda ke dalam daftar pantauan atau watchlist.
- Pencarian: Cari Movie atau TV Show berdasarkan judul atau kata kunci tertentu.

## Panduan Instalasi dan Menjalankan Cinemania

Sebelum menginstal Cinemania, pastikan sistem Anda memenuhi persyaratan berikut:

- Flutter SDK: Pastikan Anda telah menginstal Flutter SDK di sistem Anda. Untuk panduan instalasi Flutter, kunjungi dokumentasi resmi Flutter.
- Dart SDK: Dart merupakan bahasa pemrograman yang digunakan oleh Flutter. Pastikan Dart SDK telah terinstal di sistem Anda.
- Editor Kode: Anda membutuhkan editor kode seperti Visual Studio Code, IntelliJ, atau Android Studio untuk mengedit dan menjalankan kode Flutter.

## Langkah 1 Mendownload Kode Sumber
Clone repositori Cinemania dari GitHub ke sistem Anda:
```
git clone https://github.com/ridwanfbnr/flutter_cinemania.git
```

## Langkah 2: Instalasi Dependensi
Buka terminal di direktori Cinemania dan jalankan perintah berikut untuk menginstal dependensi:
```
flutter pub get
```

## Langkah 3: Masukkan API key TMDB
Anda dapat mendaftar untuk mendapatkan keys API 
https://developers.themoviedb.org/3/getting-started/introduction
```
ubah API key TMDB di file variables.dart

-lib/
--core/
---constants/
----variables.dart
```

## Langkah 4: Menjalankan Aplikasi
Setelah menginstal dependensi dan memasukkan API key TMDB, selanjutnya jalankan aplikasi Cinemania dengan perintah:
```
flutter run
```

Catatan: Pastikan Anda memiliki koneksi internet saat pertama kali menjalankan aplikasi untuk mengunduh data yang diperlukan.


Untuk bantuan memulai pengembangan dengan Flutter, lihat
[dokumentasi online](https://docs.flutter.dev/), yang dapat melihat tutorial,
sample, panduan pengembangan mobile, dan referensi API lengkap.

