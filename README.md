# Template Laporan Skripsi/Thesis FMIPA USK

Dokumen ini dibuat berdasarkan standar penulisan skripsi Fakultas MIPA, Universitas Syiah Kuala (USK). 
Template ini dimodifikasi dari:
- overleaf templates yang dibuat oleh Andreas Febrian dan Lia Sadita [here](https://www.overleaf.com/latex/templates/thesis-template-for-universitas-indonesia/brfkhqvmkzhv), yang awalnya didasarkan pada standar IEEE dan konfigurasi LaTeX untuk laporan skripsi di Universitas Indonesia (UI).
- Halaman pengesahan, plagiasi, dll [dari](https://github.com/AbdulHafidh-AI/Template-Scratch).

## Quick Guide

Berikut adalah panduan singkat untuk menggunakan template ini:

- **`thesis.tex`**: File utama. Anda dapat mengomentari atau meng-un-komentari bagian yang tidak perlu seperti bab dan lembaran, sesuaikan dengan kebutuhan Anda.
- **`settings.tex`**: File konfigurasi untuk menjaga konsistensi beberapa nilai seperti nama penulis, pembimbing, judul, dan lain-lain.
- **`pustaka.bib`**: Tempat untuk menaruh referensi.
- **`assets/`**: Tambahkan gambar atau PDF di folder ini.
- **`src/01-body/`**: Edit bagian bab (1-6) di folder ini.


Jika ada ditemukan ketidaksesuaian format, anda bisa membuat `issue` atau/dan berkontribusi (feel free).

## Cara Menggunakan

Untuk pengguna macOS, Anda perlu menginstal paket `pygments` terlebih dahulu. Anda dapat melakukannya dengan menggunakan Homebrew:

```bash
brew install pygments
```

Untuk mengkompilasi dokumen LaTeX dan menghasilkan file PDF, Anda dapat menggunakan perintah `make`:

```bash
make
```

Untuk membersihkan file yang dihasilkan dari kompilasi, Anda dapat menggunakan perintah `make clean`:

```bash
make clean
```