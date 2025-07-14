# SYUKA-SYUKA | Dashboard Analisis Penjualan Minuman

## Tujuan 
Dataset yang digunakan sama seperti [projek Excel sebelumnya](https://github.com/rafaauroraa/Data-Analisis-Dashboard-Excel). Namun pada proyek ini, proses pengolahan data dilakukan menggunakan PostgreSQL, sedangkan visualisasinya dibuat dengan Tableau. Tujuan dari proyek ini untuk menunjukkan proses analisis data menggunakan kombinasi tools yang berbeda, yaitu PostgreSQL dan Tableau.

## Dataset
[Data Mentah](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Data_mentah.csv)

[Data Referensi](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Data%20Referensi.sql)

Sumber data: Dataset yang disusun untuk keperluan simulasi penjualan minuman

Periode waktu: Januari – Desember 2024 (12 bulan)

## Pertanyaan Bisnis 
- Berapa total pendapatan penjualan selama periode berjalan?
- Berapa total pesanan (order) yang diterima?
- Berapa total minuman yang terjual?
- Apa saja 3 (tiga) produk minuman yang paling laris?
- Bagaimana distribusi jumlah penjualan berdasarkan kategori minuman?
- Bagaimana distribusi penjualan berdasarkan ukuran minuman?
- Bagaimana pendapatan jika dilihat dari kategori dan ukuran?
- Bagaimana tren pendapatan dari waktu ke waktu?
- Hari apa yang menjadi hari tersibuk dalam satu minggu?

## Proses Analisis
- Proses dimulai dengan memasukkan data transaksi (CSV) ke dalam database menggunakan PostgreSQL. Selain itu, [Tabel Referensi Minuman](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Data%20Referensi.sql) dibuat secara manual dengan perintah CREATE TABLE dan INSERT untuk melengkapi informasi tiap produk seperti nama minuman, komposisi, dan kategori. 
- Setelah seluruh data tersedia, dilakukan pembersihan dan transformasi data dilakukan menggunakan [query SQL](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Olah%20Data.sql). Proses ini meliputi penggabungan data transaksi dengan referensi produk, penambahan kolom total harga, serta pembuatan kolom baru untuk hari berdasarkan tanggal transaksi.
- Data yang telah diolah kemudian diekspor ke Tableau untuk proses visualisasi. Sebelum divisualisasikan, ditambahkan field untuk mengekstrak bulan dari tanggal transaksi dan dilakukan pengecekan struktur data agar sesuai dengan kebutuhan visualisasi.
- Setiap visualisasi disusun berdasarkan kebutuhan analisis, lalu dikumpulkan dalam satu  [dashboard interaktif](https://github.com/rafaauroraa/Data-Analisis-Dashboard-SQL-Tableau/blob/main/Dashboard.twb).
- Dashboard dilengkapi dengan filter berdasarkan bulan, ukuran, dan kategori, sehingga memungkinkan eksplorasi data secara lebih dinamis dan mendalam untuk menjawab pertanyaan bisnis.

## Dashboard
![Cuplikan Dashboard](https://github.com/user-attachments/assets/71a3f911-2003-417e-b8e6-c4d55ad3f915)

## Ringkasan Dashboard
- Total Pendapatan: Rp 249.108.000
- Total Pesanan: 1.433 pesanan
- Total Minuman Terjual: 27.730 minuman
- Minuman Terlaris: Thai Tea (3.850 minuman)
- Kategori Terpopuler: Milk Tea Series (38,3% penjualan)
- Ukuran Terlaris: Regular (33,8% penjualan)
- Pendapatan Tertinggi: Kategori Creamy Series dengan Ukuran Large (Rp.45.710.000,00)
- Bulan dengan Pendapatan Tertinggi: Bulan Juli (Rp.23.165.000,00)
- Hari Tersibuk: Selasa (585 pesanan dengan 4.137 minuman terjual)

## Insight Bisnis
Produk Unggulan

- Thai Tea tercatat sebagai minuman terlaris dengan total penjualan sebanyak 3.850 minuman. Hal ini menunjukkan potensi besar untuk pengembangan promosi lebih lanjut. Salah satunya menggabungkan produk Thai Tea dengan produk lain dalam satu paket promosi (promosi bundling) untuk meningkatkan nilai transaksi per pembelian dengan mendorong konsumen membeli lebih dari satu item.
- Kategori Milk Tea Series mendominasi penjualan dengan kontribusi sebesar 38,3%, menunjukkan preferensi konsumen terhadap minuman berbasis teh dan susu. Sehingga pengembangan menu baru berbasis teh dan susu dapat menjadi langkah strategis untuk memperluas pilihan konsumen.
Kategori Tea Series mencatat penjualan terendah (25%), namun memiliki potensi untuk menjangkau segmen pasar yang lebih spesifik, seperti konsumen yang menghindari susu atau mencari minuman lebih ringan dan menyegarkan. Strategi seperti rebranding, misalnya dengan menonjolkan nilai low calorie dan health friendly, bisa dikembangkan sebagai strategi untuk memperluas pilihan dan meningkatkan loyalitas pelanggan.

Strategi Ukuran dan Kategori

- Distribusi penjualan berdasarkan ukuran tergolong merata (Small 33,1% | Regular 33,8% | Large 33,2%), menunjukkan tidak adanya preferensi ukuran yang dominan. Hal ini bisa dimanfaatkan untuk menerapkan strategi upselling. Salah satu caranya adalah dengan menawarkan diskon untuk upsizing, agar konsumen lebih tertarik memilih ukuran Large. Strategi ini mengandalkan persepsi value for money dan paling efektif diterapkan pada kategori dengan pendapatan tinggi, seperti Creamy Series.

Momentum Penjualan

- Bulan Juli mencatat pendapatan tertinggi sebesar Rp23.165.000. Meskipun penyebab pastinya belum dapat dipastikan, kenaikan ini kemungkinan dipengaruhi oleh libur sekolah. Hal ini memberi indikasi awal adanya potensi pola musiman yang dapat dimanfaatkan menggunakan strategi promosi temporer, seperti peluncuran varian edisi liburan atau bundling khusus pembelian keluarga selama periode tersebut.
- Hari Selasa mencatat penjualan tertinggi sepanjang tahun, yaitu 585 pesanan dengan total 4.137 minuman terjual. Temuan ini cukup menarik, karena hari kerja di awal pekan biasanya bukan puncak penjualan dalam industri F&B. Namun, analisis per bulan menunjukkan bahwa hari tersibuk bervariasi, sehingga strategi promosi berbasis hari tetap (seperti “Promo Selasa”) sebaiknya diuji coba terlebih dahulu sebelum dijadikan strategi rutin.

## Kesimpulan
Analisis penjualan minuman Syuka-Syuka selama tahun 2024 menunjukkan bahwa strategi penjualan dapat difokuskan pada dua hal utama, yaitu mengoptimalkan performa produk unggulan seperti Thai Tea dan Milk Tea Series untuk menjaga kontribusi penjualan utama dan meningkatkan nilai transaksi melalui strategi upselling ke ukuran Large, dengan pendekatan seperti diskon upsizing atau bundling harga.
