-- Yearly Sales Trend

SELECT 
    YEAR(tanggal) AS tahun,
    SUM(jumlah_terjual) AS total_penjualan
FROM penjualan_bolen
GROUP BY tahun
ORDER BY tahun;