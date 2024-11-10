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

## Cara Menggunakan

Untuk pengguna macOS, Anda perlu menginstal paket `pygments` terlebih dahulu. Anda dapat melakukannya dengan menggunakan Homebrew:

```bash
brew install pygments
```

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