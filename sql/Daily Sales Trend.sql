-- Daily Sales Trend

SELECT 
    tanggal,
    SUM(jumlah_terjual) AS total_harian
FROM penjualan_bolen
GROUP BY tanggal
ORDER BY tanggal;