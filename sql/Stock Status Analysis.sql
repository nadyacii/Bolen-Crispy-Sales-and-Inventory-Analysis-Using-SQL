-- Stock Status Analysis

SELECT 
    tanggal,
    nama_produk,
    jumlah_terjual,
    stok_produk,
    (stok_produk - jumlah_terjual) AS sisa_stok,
    CASE 
        WHEN (stok_produk - jumlah_terjual) <= 0 THEN 'Understock'
        WHEN (stok_produk - jumlah_terjual) > 50 THEN 'Overstock'
        ELSE 'Normal'
    END AS status_stok
FROM penjualan_bolen;