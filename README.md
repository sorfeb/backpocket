# backpocket

## TUGAS 7: Elemen Dasar Flutter

### 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
   Stateless widget tidak pernah berubah sehingga tidak bergantung pada apapun selain informasi tentang konfigurasinya; Contohnya adalah **Icon**, **IconButton**, dan **Text**

   Stateful widget bersifat dinamis karena dapat mengubah wujudnya setelah dipicu oleh _events_ yang dilakukan oleh user atau saat menerima data; Contohnya adalah **Checkbox**, **Radio**, **Slider**,         **InkWell**, **Form**,dan **TextField**
   
   
### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
   - MyApp (Class)
    Sebuah StatelessWidget yang merupakan root (akar) dari aplikasi. Ini adalah widget yang pertama kali dijalankan saat aplikasi dimulai. Widget ini digunakan untuk mengonfigurasi aplikasi, mengatur        tema serta halaman utama, dan merupakan widget yang paling awal dijalankan saat aplikasi di-run.

  - MaterialApp (Widget)
    Widget yang mengonfigurasi aplikasi Flutter dengan berbagai pengaturan. Contohnya untuk mengatur judul aplikasi, tema, dan halaman utama.
  
  - theme (ThemeData)
    Properti yang mengatur tema visual aplikasi, termasuk palet warna, tampilan, dan gaya.
  
  - colorScheme (ColorScheme)
    Properti yang mengatur palet warna untuk tema aplikasi
  
  - home (Widget)
    Properti yang mengatur halaman utama (root) aplikasi, yaitu MyHomePage.
  
  - MyHomePage (Class)
    StatelessWidget yang menjadi halaman utama home page aplikasi
  
  - Scaffold (Widget)
    Widget yang mengatur struktur dasar halaman.
  
  - AppBar (Widget)
    Widget yang menampilkan bar di lokasi paling atas halaman dengan judul 'backpocket'
  
  - SingleChildScrollView (Widget)
    Sebuah wrapper yang memungkinkan kontennya dapat digulir. Ini berguna saat ada konten yang lebih panjang dari layar.
  
  - Padding (Widget)
    Digunakan untuk menambahkan padding di sekitar konten widget lain
  
  - Column (Widget)
    Digunakan untuk menampilkan widget-child secara vertikal
  
  - Text (Widget)
    Widget untuk menampilkan teks
  
  - GridView.count (Widget)
    Widget untuk menampilkan grid layout dengan jumlah kolom yang tetap. Digunakan untuk menampilkan daftar item toko.
  
  - ShopCard (Class)
    StatelessWidget yang berwujud dan berfungsi sebagai tombol untuk diklik
  
  - Material (Widget)
    mengatur warna latar belakang.
  
  - InkWell (Widget)
    membuat area yang memperbolehkan user untuk mengeklik kartu dan menampilkan pesan Snackbar.
  
  - Icon (Widget)
    menampilkan ikon pada kartu toko.
  
  - SnackBar (Widget)
    menampilkan pesan sementara (biasanya notifikasi) di bagian bawah layar ketika user mengklik item toko.
   
### 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
   1. install Flutter untuk windows dari cmd di direktori yang mau ditempatkan oleh folder proyek
   2. masuk ke direktori proyek dan create project flutter
   3. buat file baru menu.dart dalam direktori backpocket/lib untuk membuat menu utama pada aplikasi
   4. buat class MyHomePage dan class MyHomePageState pada file menu.dart
   5. import menu.dart ke main.dart
   6. ubah menu.dart dari stateful menjadi stateless
   7. Tambah list yang berisi ShopItem agar dapat menampilkan tombol-tombol di home
   8. Set Scaffold agar format tombol dapat di-scroll, memiliki padding, dan di-set menjadi gridView
   9. buat widget stateless bernama ShopCard untuk menampilkan card
   10. push kode ke repositori github
