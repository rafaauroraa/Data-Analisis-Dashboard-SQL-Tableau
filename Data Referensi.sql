-- Membuat tabel referensi minuman secara manual
CREATE TABLE referensi_minuman ( 
    KodeMinuman VARCHAR(10) PRIMARY KEY,
    NamaMinuman VARCHAR(50),
    Komposisi VARCHAR(100),
    Kategori VARCHAR(50)
);

-- Menambahkan data ke dalam tabel referensi minuman
INSERT INTO referensi_minuman (KodeMinuman, NamaMinuman, Komposisi, Kategori) VALUES
('P001', 'Ori Tea', 'Teh', 'Tea Series'),
('P002', 'Kampul Tea', 'Teh, Buah', 'Tea Series'),
('P003', 'Thai Tea', 'Teh, Susu', 'Milk Tea Series'),
('P004', 'Green Tea', 'Teh, Susu', 'Milk Tea Series'),
('P005', 'Leci Tea', 'Teh, Buah', 'Milk Tea Series'),
('P006', 'Cappuccino', 'Kopi, Susu', 'Creamy Series'),
('P007', 'Chocolate', 'Cokelat, Susu', 'Creamy Series'),
('P008', 'Caramel', 'Caramel, Susu', 'Creamy Series');

-- Menampilkan isi tabel referensi minuman
select *
from referensi_minuman rm 
