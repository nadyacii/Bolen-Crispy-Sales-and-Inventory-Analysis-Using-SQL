# Bolen Crispy Sales and Inventory Analysis Using SQL
This is a Data Analyst project focused on analyzing sales performance and inventory management using SQL and dashboard visualization.

## 1. Background
Bisnis Bolen Crispy merupakan usaha di bidang makanan yang menjual berbagai varian produk bolen kepada pelanggan. Seiring dengan meningkatnya transaksi penjualan, diperlukan analisis data yang tepat untuk memahami performa bisnis secara menyeluruh. Saat ini, data penjualan yang tersedia masih berupa data mentah (raw data) dan belum dimanfaatkan secara maksimal untuk menghasilkan insight yang dapat membantu pengambilan keputusan. Hal ini dapat menyebabkan beberapa permasalahan, seperti:

- Tidak diketahui produk mana yang paling laris dan paling sedikit terjual
- Sulit memantau tren penjualan dari waktu ke waktu
- Kurangnya visibilitas terhadap kondisi stok (apakah understock, normal, atau overstock)
- Risiko kehabisan stok pada produk dengan permintaan tinggi
- Penumpukan stok pada produk yang kurang diminati

Oleh karena itu, diperlukan analisis data menggunakan SQL untuk mengolah data penjualan menjadi informasi yang lebih terstruktur dan bermakna. Selain itu, hasil analisis akan divisualisasikan dalam bentuk dashboard agar lebih mudah dipahami dan digunakan oleh stakeholder.

Melalui project ini, dilakukan proses analisis terhadap data penjualan dan stok untuk menghasilkan insight yang dapat membantu meningkatkan performa bisnis serta mendukung pengambilan keputusan berbasis data (data-driven decision making).

## 2. Tujuan
Tujuan dari project ini adalah untuk menganalisis data penjualan dan stok pada bisnis Bolen Crispy untuk menghasilkan insight yang dapat mendukung pengambilan keputusan berbasis data. Adapun tujuan utama dari analisis ini meliputi:

- Menganalisis performa penjualan secara keseluruhan, termasuk total penjualan dan revenue
- Mengidentifikasi produk terlaris (top-selling) dan produk dengan penjualan rendah (slow-moving)
- Menganalisis tren penjualan berdasarkan waktu (harian, mingguan, atau periode tertentu)
- Mengevaluasi kondisi stok dengan mengklasifikasikan status stok menjadi understock, normal, dan overstock
- Menyajikan hasil analisis dalam bentuk dashboard agar mudah dipahami oleh pengguna

## 3. Dataset
Dataset yang digunakan dalam project ini merupakan data penjualan produk Bolén Crispy yang berisi informasi terkait transaksi, produk, harga, dan stok. 
Adapun kolompada dataset awal meliputi:

- Tanggal → menunjukkan waktu terjadinya transaksi penjualan
- Hari → informasi hari dari setiap transaksi (Senin–Minggu)
- Nama Produk → jenis produk bolen yang dijual
- Jumlah Terjual → jumlah unit produk yang terjual
- Harga Satuan → harga per unit produk
- Stok Produk → jumlah stok yang tersedia

## 4. Tools
- SQL (MySQL)
- Looker Studio (Dashboard)
- Microsoft Excel

## 5. Data Analysis Process
Pada project ini, proses analisis data dilakukan menggunakan SQL untuk mengolah dataset menjadi insight yang informatif dan siap divisualisasikan dalam dashboard. Tahapan analisis yang dilakukan meliputi:

### 1. Data Aggregation & Exploration

Melakukan agregasi data untuk memahami gambaran umum performa penjualan, hal ini bertujuan untuk mengetahui produk mana yang paling berkontribusi terhadap bisnis.

- Total penjualan dan total revenue
- Penjualan dan revenue per produk
- Rata-rata penjualan harian per produk

### 2. Time Series Analysis

Melakukan analisis berbasis waktu untuk mengidentifikasi pola dan tren penjualan, meliputi:

- Tren penjualan harian (daily sales trend)
- Tren revenue harian (daily revenue trend)
- Tren penjualan tahunan (yearly sales trend)

### 3. Product Performance Analysis

Menganalisis performa masing-masing produk untuk mendukung pengambilan keputusan bisnis. Insight dari analisis ini dapat digunakan untuk strategi promosi dan pengelolaan produk.

- Produk terlaris (top 3 best-selling products)
- Produk dengan penjualan terendah (slow-moving products)
- Performa produk berdasarkan hari (top-selling products by day)

### 4. Sales Pattern Analysis

Mengidentifikasi pola perilaku penjualan berdasarkan waktu. Analisis ini membantu bisnis dalam menentukan strategi operasional dan promosi pada waktu tertentu.

- Penjualan berdasarkan hari dalam seminggu
- Perbandingan penjualan antara weekday dan weekend

### 5. Feature Engineering & Stock Analysis

Melakukan transformasi data dengan membuat kolom turunan untuk analisis inventori:

- Sisa Stok → dihitung dari `stok_produk` - `jumlah_terjual`
- Status Stok → diklasifikasikan menjadi:
  - Understock → stok habis atau kurang
  - Normal → stok dalam kondisi aman
  - Overstock → stok berlebih

Proses ini menggunakan logika CASE WHEN dalam SQL dan bertujuan untuk mengevaluasi efisiensi pengelolaan stok serta mengidentifikasi potensi risiko dalam inventori.

## 6. Key Analysis

### 1. Best-Selling Products
- Top 3 Best-Selling Products adalag Bolen Proltape, Bolen Coklat Keju, dan Bolen Pisang Coklat. Bolen Proltape merupakan produk dengan penjualan tertinggi (13.239 unit) sekaligus penyumbang revenue terbesar (Rp304.497.000).

### 2. Slow-Moving Products
- Bolen Coklat memiliki penjualan terendah (11.791 unit), meskipun selisihnya tidak terlalu signifikan dengan produk lainnya.

### 3. Yearly Sales Trend (Growth)
- Terjadi peningkatan signifikan dari 2021 (12.303 unit) ke 2022 (29.903 unit) (~140% growth)
- Penjualan mencapai titik tertinggi pada 2023 (30.309 unit)
- Pada 2024 tercatat 16.697 unit, yang menunjukkan kemungkinan penurunan jika merupakan data full-year

### 4. Sales Pattern by Day
- Penjualan weekday (64.466 unit) jauh lebih tinggi dibandingkan weekend (24.746 unit)
- Setiap hari memiliki produk unggulan berbeda:
  - Senin → Bolen Banana
  - Selasa → Bolen Proltape
  - Rabu → Bolen Coklat Keju
  - Kamis → Bolen Cokju (Mini)
  - Jumat → Bolen Keju (Mini)
  - Sabtu → Bolen Pisang Coklat
  - Minggu → Bolen Coklat

## 7. Dashboard
 ![Dashboard_Bolen](dashboard/Bolen_Crispy_Sales_Dashboard.jpg)

## 8. Business Recomendation
### 1. Fokus pada Produk “Best-Selling”

Insight:

Bolen Proltape adalah produk terbanyak dari sisi penjualan dan revenue

Recommendation:

- Prioritaskan produksi dan ketersediaan stok
- Jadikan sebagai produk utama dalam promosi
- Pertimbangkan bundling dengan produk lain untuk meningkatkan penjualan cross-product

### 2. Optimasi Produk Slow-Moving

Insight:

Bolen Coklat memiliki penjualan terendah dibanding produk lainnya

Recommendation:

- Lakukan evaluasi harga atau strategi promosi
- Pertimbangkan inovasi (varian rasa baru atau packaging)
- Gunakan diskon atau bundling untuk meningkatkan demand

### 3. Antisipasi Penurunan Penjualan

Insight:

Penjualan menunjukkan potensi penurunan di tahun 2024 setelah puncak penjualan di 2023

Recommendation:

- Analisis faktor eksternal seperti seasonality, kompetitor, dll.
- Tingkatkan marketing penjualan
- Gunakan data historis untuk forecasting dan perencanaan strategi

### 4. Maksimalkan Potensi Weekday Sales

Insight:

Mayoritas penjualan terjadi pada hari kerja (weekday)

Recommendation:

- Fokuskan promosi pada segmen pekerja/kantor
- Buat campaign seperti “weekday deals” atau “office snack package”
- Optimalkan distribusi stok pada hari kerja

  
### 5. Strategi Berdasarkan Pola Harian

Insight:

Setiap hari memiliki produk unggulan berbeda

Recommendation:

- Buat promo spesifik per hari (daily promotion strategy)
- Sesuaikan stok berdasarkan pola permintaan harian
- Gunakan insight ini untuk campaign marketing yang lebih targeted


