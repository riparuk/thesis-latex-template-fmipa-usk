# Template Laporan Skripsi/Thesis FMIPA USK

Dokumen ini dibuat berdasarkan standar penulisan skripsi Fakultas MIPA, Universitas Syiah Kuala (USK).
Template ini dimodifikasi dari:

- overleaf templates yang dibuat oleh Andreas Febrian dan Lia Sadita [here](https://www.overleaf.com/latex/templates/thesis-template-for-universitas-indonesia/brfkhqvmkzhv), yang awalnya didasarkan pada standar IEEE dan konfigurasi LaTeX untuk laporan skripsi di Universitas Indonesia (UI).
- Halaman pengesahan, plagiasi, dll [dari](https://github.com/AbdulHafidh-AI/Template-Scratch).

## Quick Guide

Berikut adalah panduan singkat untuk menggunakan template ini:

- **`thesis.tex`**: Berisi semua hal yang akan di inputkan secara keseluruhan, anda bisa hanya fokus ke salah satu dari 3 file .tex berikut dibawah.
- **`seminar_proposal.tex`**: Template untuk seminar proposal.
- **`seminar_hasil.tex`**: Template untuk seminar hasil.
- **`sidang_skripsi.tex`**: Template untuk sidang skripsi.
- **`settings.tex`**: File konfigurasi untuk menjaga konsistensi beberapa nilai seperti nama penulis, pembimbing, judul, dan lain-lain.

Template ini telah disesuaikan dengan standar penulisan skripsi Fakultas MIPA, Universitas Syiah Kuala (USK).

- **`pustaka.bib`**: Tempat untuk menaruh referensi.
- **`assets/`**: Tambahkan gambar atau PDF di folder ini.
- **`src/01-body/`**: Edit bagian bab (1-5) di folder ini.

Jika ada ditemukan ketidaksesuaian format, anda bisa membuat `issue` atau/dan berkontribusi (feel free).

## Cara Menggunakan (Linux/MacOS)

### Instruksi Linux/macOS

Jika Anda menggunakan Linux atau macOS, Anda dapat menggunakan Makefile yang disertakan dalam proyek ini.

#### Prasyarat

1. Pastikan `pdflatex`, `biber`, dan `make` sudah terinstal.
2. Masuk ke folder repo ini terlebih dahulu sebelum menjalankan perintah `make` yang dijelaskan dibawah.

Untuk pengguna macOS, Anda perlu menginstal paket `pygments` terlebih dahulu. Anda dapat melakukannya dengan menggunakan Homebrew:

```bash
brew install pygments
```

(Jika error related pygments, coba install sesuai dengan cara pada Linux/Distro tertentu)

Untuk mengkompilasi dokumen LaTeX (thesis, proposal, hasil dan skripsi) dan menghasilkan file PDF, Anda dapat menggunakan perintah `make`:

```bash
make
```

Untuk mengkompilasi masing-masing dokumen (thesis, proposal, hasil, atau skripsi) agar `lebih cepat`, Anda dapat menggunakan perintah `make` dengan target yang sesuai:

```bash
make thesis
make proposal
make hasil
make skripsi
```

Untuk membersihkan file yang dihasilkan dari kompilasi, Anda dapat menggunakan perintah `make clean` (akan menghapus termasuk .pdf) sebelum melakukan `kompilasi`:

```bash
make clean
```

# Cara Menggunakan di Windows (Not Tested yet)

- tested by ardiansyah (https://github.com/ansyahh)

### Prasyarat

1. Pastikan `pdflatex` dan `biber` sudah terinstal dan tersedia di PATH sistem Anda. Ini biasanya termasuk dalam distribusi LaTeX seperti MiKTeX atau TeX Live.
   Untuk pengguna Windows, Anda dapat menggunakan skrip `build.bat`. Anda dapat menggunakannya sebagai berikut:

### Build Semua Dokumen

Untuk mengkompilasi semua dokumen (thesis, seminar_hasil, seminar_proposal, sidang_skripsi), jalankan:

```bash
build.bat all
```

### Build Dokumen Tertentu

Untuk mengkompilasi dokumen tertentu, berikan nama dasar dokumen (tanpa .tex) sebagai argumen. Sebagai contoh, untuk mengkompilasi `thesis.tex`, terdapat beberapa pilihan dokumen seperti `thesis, seminar_hasil, seminar_proposal, sidang_skripsi`:

```bash
build.bat thesis
```

### Membersihkan File Sementara

Untuk menghapus semua file sementara yang dihasilkan selama proses build, jalankan:

```bash
build.bat clean
```

Jalankan ini ketika ingin melakukan kompilasi ulang setelah melakukan perubahan.
