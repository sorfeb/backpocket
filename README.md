# backpocket

## TUGAS 7: Elemen Dasar Flutter
<details>
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
</details>

## TUGAS 7: Elemen Dasar Flutter

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
   `Navigator.push()` dan `Navigator.pushReplacement()` adalah fungsi-fungsi yang digunakkan untuk menavigasi melalui berbagai _screens_ dalam Flutter.
   
   `Navigator.push()` **menambah** _route_ baru ke atas kumpulan stack _routes_ yang sudah diatur oleh Navigator. 
   Berarti pengguna dapat menekan tombol _**back**_ untuk menutup _screen_ yang baru saja ditambah dan menuju kembali  ke _screen_ sebelumnya.
   Contoh dari penggunaan Navigator.push() adalah saat ingin menampilkan sebuah halaman _details_ mengenai sebuah _item_ dari sebuah halaman daftar _item_.

   `Navigator.pushReplacement()` **mengganti** (berarti menutup _route_ yang berada di paling atas stack dan menambah _route_ yang baru). 
   Berarti menekan tombol _**back**_ tidak dapat mengembalikan user ke halaman sebelum _screen_ yang baru karena sudah digantikkan.
   Contoh dari penggunaan Navigator.pushReplacement() adalah saat ingin menavigasi ke _screen_ baru yang tidak ada kaitan sama sekali dengan _screen_ saat ini; seperti saat User telah berhasil ter-         autentikasi dan akan diredirect ke halaman utama (User tidak dapat balik ke halaman Login lagi karena sudah tidak relevan).
   
### 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
#### 1. Single-child layout widgets

      Container: Widget yang dapat digunakan untuk mengatur tampilan widget lainnya seperti padding, margin, dan background color.
      Center: Widget yang digunakan untuk menempatkan widget lainnya di tengah-tengah layar.
      Align: Widget yang digunakan untuk menempatkan widget lainnya pada posisi yang ditentukan.
      FractionallySizedBox: Widget yang digunakan untuk menentukan ukuran widget anak sebagai fraksi dari ruang yang tersedia.
      AspectRatio: Widget yang digunakan untuk menentukan rasio aspek widget anak.
      Multi-child layout widgets

#### 2. Row dan Column: Widget yang digunakan untuk menempatkan widget anak secara horizontal atau vertikal.
      
      Stack: Widget yang digunakan untuk menumpuk widget anak di atas satu sama lain.
      IndexedStack: Widget yang digunakan untuk menumpuk widget anak di atas satu sama lain, tetapi hanya menampilkan satu widget pada satu waktu.
      Flow: Widget yang digunakan untuk menempatkan widget anak dalam bentuk aliran.
      Wrap: Widget yang digunakan untuk menempatkan widget anak dalam bentuk wrapping.
      
#### 3. Sliver widgets

      SliverAppBar: Widget yang digunakan untuk menampilkan app bar yang dapat di-scroll.
      SliverList dan SliverGrid: Widget yang digunakan untuk menampilkan daftar atau grid yang dapat di-scroll.
      SliverToBoxAdapter: Widget yang digunakan untuk menempatkan widget lainnya di dalam CustomScrollView .

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
