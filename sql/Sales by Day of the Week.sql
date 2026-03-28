-- Sales by Day of the Week

SELECT 
    hari,
    SUM(jumlah_terjual) AS total_penjualan
FROM penjualan_bolen
GROUP BY hari
ORDER BY total_penjualan DESC;