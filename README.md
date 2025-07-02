# SYUKA-SYUKA | Dashboard Analisis Penjualan Minuman

## Tujuan 
Dataset yang digunakan sama seperti pada project Excel sebelumnya. Namun, dalam project ini, proses pengolahan data dilakukan menggunakan PostgreSQL, sedangkan visualisasinya dibuat dengan Tableau. Tujuan dari project ini untuk menunjukkan pendekatan eksplorasi data menggunakan tools yang berbeda, yaitu PostgreSQL dan Tableau.

## Dataset
- [Data Mentah](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Data_mentah.csv)
- [Data Referensi](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Data%20Referensi.sql)
- Sumber data: Dataset yang disusun untuk keperluan simulasi penjualan minuman
- Periode waktu: Januari – Desember 2024 (12 bulan)

## Pertanyaan Bisnis 
Berapa total pendapatan penjualan selama periode berjalan?
Berapa total pesanan (order) yang diterima?
Berapa total minuman yang terjual?
Apa saja 3 (tiga) produk minuman yang paling laris?
Bagaimana distribusi jumlah penjualan berdasarkan kategori minuman?
Bagaimana distribusi penjualan berdasarkan ukuran minuman?
Bagaimana pendapatan jika dilihat dari kategori dan ukuran?
Bagaimana tren pendapatan dari waktu ke waktu?
Hari apa yang menjadi hari tersibuk dalam satu minggu?

## Proses Analisis
- Proses dimulai dengan memasukkan data transaksi (CSV) ke dalam database menggunakan PostgreSQL. [Tabel Referensi Minuman](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Data%20Referensi.sql) dibuat secara manual dengan perintah CREATE TABLE dan INSERT, untuk melengkapi informasi tiap produk seperti nama minuman, komposisi, dan kategori. 
- Setelah seluruh data tersedia, dilakukan pembersihan dan transformasi data melalui [query SQL](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Olah%20Data.sql). Beberapa langkah penting meliputi penggabungan data transaksi dan referensi produk, penambahan kolom total harga, serta pembuatan kolom baru untuk hari berdasarkan tanggal transaksi.
- Data hasil olahan kemudian diekspor dan dimasukkan ke Tableau untuk proses visualisasi. Sebelum divisualisasikan, ditambahkan field baru untuk mengekstrak informasi bulan dari tanggal transaksi, serta dilakukan pengecekan data source agar struktur data sesuai.
- Setiap visualisasi disusun berdasarkan kebutuhan analisis. Semua grafik kemudian dikumpulkan dalam satu dashboard interaktif.
- Dashboard akhir dilengkapi dengan filter berdasarkan bulan, ukuran, dan kategori, sehingga memungkinkan eksplorasi data secara dinamis dan mendalam untuk menjawab pertanyaan bisnis secara efektif.

