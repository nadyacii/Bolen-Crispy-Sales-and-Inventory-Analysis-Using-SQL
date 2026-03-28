-- Average Daily Sales per Product

SELECT 
    nama_produk,
    AVG(jumlah_terjual) AS avg_daily_sales
FROM penjualan_bolen
GROUP BY nama_produk;