-- Menggabungkan data transaksi (file csv) dengan data referensi minuman yang sudah dibuat manual sebelumnya
select 
A."Order ID" as "Order_ID" , -- Menggunakan Alias untuk mengubah nama kolom 
B."namaminuman" as "Nama_Minuman",
B."kategori" as "Kategori",
A."Ukuran" , 
A."Jumlah" ,
A."Tanggal Order" as "Tanggal_Order" ,
  CASE TRIM(TO_CHAR(TO_DATE(A."Tanggal Order", 'MM/DD/YYYY'), 'Day')) -- Membuat kolom baru untuk nama hari berdasarkan tanggal order
    WHEN 'Sunday' THEN 'Minggu' -- Dikonversi ke Bahasa Indonesia untuk konsistensi
    WHEN 'Monday' THEN 'Senin'
    WHEN 'Tuesday' THEN 'Selasa'
    WHEN 'Wednesday' THEN 'Rabu'
    WHEN 'Thursday' THEN 'Kamis'
    WHEN 'Friday' THEN 'Jumat'
    WHEN 'Saturday' THEN 'Sabtu'
  END AS "Hari",
A."Harga Satuan" as "Harga_Satuan",
A."Harga Satuan" * "Jumlah" as "Total_Harga" -- Menghitung total harga per transaksi
from data_mentah A
join referensi_minuman B 
on A."Kode Minuman" = B."kodeminuman" -- Join berdasarkan kode minuman
order by "Order_ID";



