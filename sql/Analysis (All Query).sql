-- Project: Bolen Crispy Sales Analysis
-- Author: Nadia Chusnul Ikromah


-- Daily Sales Trend
SELECT 
    tanggal,
    SUM(jumlah_terjual) AS total_harian
FROM penjualan_bolen
GROUP BY tanggal
ORDER BY tanggal;


-- Daily Revenue Trend
SELECT 
    tanggal,
    SUM(jumlah_terjual * harga_satuan) AS revenue_harian
FROM penjualan_bolen
GROUP BY tanggal
ORDER BY tanggal;


-- Revenue by Product
SELECT 
    nama_produk,
    SUM(jumlah_terjual * harga_satuan) AS revenue
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY revenue DESC;


-- Sales & Revenue by Product
SELECT 
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual,
    SUM(jumlah_terjual * harga_satuan) AS total_revenue
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY total_terjual DESC;


-- Average Daily Sales per Product
SELECT 
    nama_produk,
    AVG(jumlah_terjual) AS avg_daily_sales
FROM penjualan_bolen
GROUP BY nama_produk;


-- Total Sales & Revenue
SELECT 
    SUM(jumlah_terjual) AS total_terjual,
    SUM(jumlah_terjual * harga_satuan) AS total_revenue
FROM penjualan_bolen;


-- Yearly Sales Trend
SELECT 
    YEAR(tanggal) AS tahun,
    SUM(jumlah_terjual) AS total_penjualan
FROM penjualan_bolen
GROUP BY tahun
ORDER BY tahun;


-- Sales by Day of the Week
SELECT 
    hari,
    SUM(jumlah_terjual) AS total_penjualan
FROM penjualan_bolen
GROUP BY hari
ORDER BY total_penjualan DESC;


-- Top 3 Best-Selling Products
SELECT 
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY total_terjual DESC
LIMIT 3;


-- Top-Selling Products by Day
SELECT 
    hari,
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM penjualan_bolen
GROUP BY hari, nama_produk
ORDER BY hari, total_terjual DESC;


-- Slow-Moving Products
SELECT 
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY total_terjual ASC;


-- Stock Status Analysis
SELECT 
    tanggal,
    nama_produk,
    jumlah_terjual,
    stok_produk,
    (stok_produk - jumlah_terjual) AS sisa_stok,
    CASE 
        WHEN (stok_produk - jumlah_terjual) <= 0 THEN 'Understock'
        WHEN (stok_produk - jumlah_terjual) > 50 THEN 'Overstock'
        ELSE 'Normal'
    END AS status_stok
FROM penjualan_bolen;


-- Weekend vs Weekday Sales Analysis
SELECT 
    CASE 
        WHEN hari IN ('Sabtu', 'Minggu') THEN 'Weekend'
        ELSE 'Weekday'
    END AS kategori_hari,
    SUM(jumlah_terjual) AS total_penjualan
FROM penjualan_bolen
GROUP BY kategori_hari;
