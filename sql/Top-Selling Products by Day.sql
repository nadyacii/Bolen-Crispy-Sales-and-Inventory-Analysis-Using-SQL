-- Top-Selling Products by Day

SELECT 
    hari,
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual
FROM penjualan_bolen
GROUP BY hari, nama_produk
ORDER BY hari, total_terjual DESC;