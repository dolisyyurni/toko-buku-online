INSERT INTO Admin VALUES 
('A000001', 'Rudi Hartono', 'rudi@bookco.com', 'admin123'), 
('A000002', 'Sari Lestari', 'sari@bookco.com', 'admin456'), 
('A000003', 'Dewi Anjani', 'dewi@bookco.com', 'admin789'), 
('A000004', 'Hendra Putra', 'hendra@bookco.com', 'admin234'), 
('A000005', 'Maya Sari', 'maya@bookco.com', 'admin567'); 

INSERT INTO Stores VALUES 
('S000001', 'BookStore Bogor', 'Jawa Barat', 'Bogor', 'Books', 'A000001'), 
('S000002', 'BookStore Depok', 'Jawa Barat', 'Depok', 'Books & Stationary', 
'A000002'), 
('S000003', 'BookStore Jakarta', 'DKI Jakarta', 'Jakarta', 'Stationary', 'A000003'), 
('S000004', 'BookStore Bandung', 'Jawa Barat', 'Bandung', 'Books', 'A000004'), 
('S000005', 'BookStore Surabaya', 'Jawa Timur', 'Surabaya', 'Books & Stationary', 
'A000005'); 

INSERT INTO Employee VALUES 
('E000001', 'Andi Saputra', 'Manager', 180, 4.5, 120, 'S000001'), 
('E000002', 'Budi Santoso', 'Staff', 160, 4.2, 90, 'S000001'), 
('E000003', 'Citra Dewi', 'Staff', 150, 4.8, 110, 'S000002'), 
('E000004', 'Dani Ramadhan', 'Manager', 200, 4.6, 130, 'S000003'), 
('E000005', 'Elisa Putri', 'Staff', 170, 4.4, 95, 'S000004'); 

INSERT INTO Customers VALUES 
('C000001', 'Dina Putri', 20, 'F', 'Bogor', 120000), 
('C000002', 'Ardi Pratama', 25, 'M', 'Depok', 80000), 
('C000003', 'Sinta Lestari', 30, 'F', 'Jakarta', 150000), 
('C000004', 'Joko Widodo', 40, 'M', 'Bandung', 95000), 
('C000005', 'Lina Sari', 18, 'F', 'Surabaya', 70000); 

INSERT INTO Products VALUES 
('P000001', 'Buku Matematika Dasar', 'Pendidikan', 55000, 'Book'), 
('P000002', 'Pulpen Premium', 'Alat Tulis', 15000, 'Stationery'), 
('P000003', 'Buku Novel Fantasy', 'Novel', 80000, 'Book'), 
('P000004', 'Pensil Mekanik', 'Alat Tulis', 18000, 'Stationery'), 
('P000005', 'Buku IPA Terpadu', 'Pendidikan', 65000, 'Book'); 

INSERT INTO Inventory VALUES 
('I000001', 40, 200, 10, 'P000001', 'S000001'), 
('I000002', 30, 100, 5, 'P000002', 'S000001'), 
('I000003', 60, 150, 20, 'P000003', 'S000002'), 
('I000004', 25, 80, 10, 'P000004', 'S000003'), 
('I000005', 50, 200, 15, 'P000005', 'S000004'); 

INSERT INTO Campaigns VALUES
('CP00001', 'Back to School', 5000000, 2000000, '2024-01-01', '2024-02-01', 
'S000001'), 
('CP00002', 'Mid Year Sale', 7000000, 3500000, '2024-06-01', '2024-06-30', 
'S000002'), 
('CP00003', 'Holiday Promo', 10000000, 6000000, '2024-12-01', '2024-12-31', 
'S000003'), 
('CP00004', 'Novel Week', 3000000, 1500000, '2024-03-10', '2024-03-20', 'S000004'), 
('CP00005', 'Stationery Discount', 4000000, 2500000, '2024-04-05', '2024-04-25', 
'S000005'); 

INSERT INTO Transactions VALUES 
('T000001', '2024-01-10', 'Cash', 'Paid', 'JNE', 'C000001', 'S000001', 'E000002', 
'CP00001'), 
('T000002', '2024-02-14', 'E-Wallet', 'Completed', 'SiCepat', 'C000002', 'S000001', 
'E000001', 'CP00001'), 
('T000003', '2024-03-05', 'Credit', 'Shipped', 'J&T', 'C000003', 'S000002', 
'E000003', 'CP00002'), 
('T000004', '2024-04-21', 'Transfer', 'Paid', 'JNE', 'C000004', 'S000003', 'E000004', 
'CP00003'), 
('T000005', '2024-05-30', 'Cash', 'Pending', 'SiCepat', 'C000005', 'S000004', 
'E000005', 'CP00004'); 

INSERT INTO Product_Review VALUES 
('C000001', 'P000001', 5, 'Bukunya sangat bagus!', '2024-01-15'), 
('C000002', 'P000002', 4, 'Pulpen enak dipakai.', '2024-02-10'), 
('C000003', 'P000003', 5, 'Ceritanya menarik.', '2024-03-07'), 
('C000004', 'P000004', 3, 'Lumayan, agak mudah patah.', '2024-04-01'), 
('C000005', 'P000005', 4, 'Materinya lengkap.', '2024-05-11'); 

INSERT INTO Operational_Cost VALUES 
('OC00001', 'Listrik', 1500000, '2024-01-01', 'S000001'), 
('OC00002', 'Internet', 500000, '2024-01-01', 'S000002'), 
('OC00003', 'Gaji Staff', 10000000, '2024-01-01', 'S000003'), 
('OC00004', 'Perawatan Toko', 2000000, '2024-01-01', 'S000004'), 
('OC00005', 'Kebersihan', 800000, '2024-01-01', 'S000005');
