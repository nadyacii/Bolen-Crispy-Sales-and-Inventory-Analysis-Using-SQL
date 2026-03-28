-- Weekend vs Weekday Sales Analysis

SELECT 
    CASE 
        WHEN hari IN ('Sabtu', 'Minggu') THEN 'Weekend'
        ELSE 'Weekday'
    END AS kategori_hari,
    SUM(jumlah_terjual) AS total_penjualan
FROM penjualan_bolen
GROUP BY kategori_hari;