-- Revenue by Product

SELECT 
    nama_produk,
    SUM(jumlah_terjual * harga_satuan) AS revenue
FROM penjualan_bolen
GROUP BY nama_produk
ORDER BY revenue DESC;