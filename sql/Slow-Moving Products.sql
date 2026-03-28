-- Slow-Moving Products

SELECT 
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY total_terjual ASC;