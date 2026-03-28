-- Top 3 Best-Selling Products

SELECT 
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY total_terjual DESC
LIMIT 3;