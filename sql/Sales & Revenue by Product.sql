-- Sales & Revenue by Product

SELECT 
    nama_produk,
    SUM(jumlah_terjual) AS total_terjual,
    SUM(jumlah_terjual * harga_satuan) AS total_revenue
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY total_terjual DESC;