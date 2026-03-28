-- Total Sales & Revenue

SELECT 
    SUM(jumlah_terjual) AS total_terjual,
    SUM(jumlah_terjual * harga_satuan) AS total_revenue
FROM penjualan_bolen;