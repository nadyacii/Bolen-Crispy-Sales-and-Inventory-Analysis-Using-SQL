-- Daily Revenue Trend

SELECT 
    tanggal,
    SUM(jumlah_terjual * harga_satuan) AS revenue_harian
FROM penjualan_bolen
GROUP BY tanggal
ORDER BY tanggal;