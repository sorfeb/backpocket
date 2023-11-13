# backpocket

## TUGAS 7: Elemen Dasar Flutter
<details>
<summary>Answers</summary> 
   
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

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
<details>
<summary>Answers</summary>

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
   `Navigator.push()` dan `Navigator.pushReplacement()` adalah fungsi-fungsi yang digunakkan untuk menavigasi melalui berbagai _screens_ dalam Flutter.
   
   `Navigator.push()` **menambah** _route_ baru ke atas kumpulan stack _routes_ yang sudah diatur oleh Navigator. 
   Berarti pengguna dapat menekan tombol _**back**_ untuk menutup _screen_ yang baru saja ditambah dan menuju kembali  ke _screen_ sebelumnya.
   Contoh dari penggunaan Navigator.push() adalah saat ingin menampilkan sebuah halaman _details_ mengenai sebuah _item_ dari sebuah halaman daftar _item_.

   `Navigator.pushReplacement()` **mengganti** (berarti menutup _route_ yang berada di paling atas stack dan menambah _route_ yang baru). 
   Berarti menekan tombol _**back**_ tidak dapat mengembalikan user ke halaman sebelum _screen_ yang baru karena sudah digantikkan.
   Contoh dari penggunaan Navigator.pushReplacement() adalah saat ingin menavigasi ke _screen_ baru yang tidak ada kaitan sama sekali dengan _screen_ saat ini; seperti saat User telah berhasil ter-         autentikasi dan akan diredirect ke halaman utama (User tidak dapat balik ke halaman Login lagi karena sudah tidak relevan).
   
### 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

   **Container:**                  mengatur tampilan widget lainnya; Cth: padding, margin, dan background color.
   **Center:**                     menempatkan widget lainnya di tengah layar.
   **Align:**                      menempatkan widget lainnya pada posisi yang ditentukan.
   **FractionallySizedBox:**       menentukan ukuran widget anak sebagai fraksi dari ruang yang tersedia.
   **AspectRatio:**                menentukan aspek rasio widget _children_ _widgets_.      
   **Stack:**                      menumpuk widget anak di atas satu sama lain.
   **Flow:**                       menempatkan widget anak dalam bentuk aliran.
   **Wrap:**                       menempatkan widget anak dalam bentuk wrapping.

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
   a. `TextFormField Name`:  Untuk tempat input **nama** item dengan tipe data String dari pengguna.
   
   b. `TextFormField Price`: Untuk tempat input **harga** item dengan tipe data int dari pengguna.
   
   c. `TextFormField Quantity`: Untuk tempat input **jumlah** item dengan tipe data int dari pengguna.
   
   d. `TextFormField "Description`: Untuk tempat input **deskripsi** item dengan tipe data String dari pengguna.
   
### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
   Clean architecture adalah _blueprint_ untuk sistem modular, yang mengikuti prinsip desain _separation of concerns_. 
   gaya arsitektur ini berfokus pada **pembagian perangkat lunak ke dalam beberapa lapisan**, untuk menyederhanakan pengembangan dan pemeliharaan. 

   #### Separation of Concerns
   - **Do one thing:** Sebuah fungsi harus melakukan satu hal saja dan melakukannya dengan baik.
   - **Prinsip Tanggung Jawab Tunggal:** Sebuah metode/kelas/komponen harus memiliki satu alasan untuk berubah.
   - **Injeksi Ketergantungan:** Sebisa mungkin, ketergantungan kelas harus disediakan oleh objek di luar kelas.
   - **Arsitektur Kode**: yaitu _Clean architecture_.
     
   ![image](https://github.com/sorfeb/backpocket/assets/112263712/46b902bb-daa1-4fcc-8d36-4d3387fc45bf)

   #### Layers
   ##### a. Feature Layer - lapisan presentasi aplikasi
   lapisan ini merupakan lapisan yang paling bergantung pada framework, karena berisi UI dan penangan peristiwa UI yang menggunakan widget untuk menampilkan tampilan.
   Widget ini dikontrol oleh state menggunakan berbagai pola desain manajemen state yang digunakan dalam Flutter.
   
   - Halaman: Ini adalah halaman-halaman aplikasi kita.
   - Manajemen State: BLoC, Penyedia, GetX, dll.
   - Widget: Widget spesifik lainnya yang dibutuhkan oleh halaman kami.
   
   ##### b. Domain Layer - innermost part of the layers (no dependencies with other layers) and it contains Entities, Use Cases & Repository Interfaces.
   ditulis murni dalam Dart tanpa elemen Flutter. Alasannya adalah bahwa domain seharusnya hanya berkaitan dengan logika bisnis aplikasi. Hal ini juga memungkinkan migrasi yang mudah antar platform, 
   jika ada masalah yang muncul.
   
   - Kasus Penggunaan: Aturan-aturan bisnis khusus aplikasi
   - Entitas: Objek bisnis dari aplikasi
   - Repositori: Kelas abstrak yang mendefinisikan fungsionalitas yang diharapkan dari lapisan luar
   
   ##### c. Data Layer  - lapisan data aplikasi
   Modul Data, yang merupakan bagian dari lapisan terluar, bertanggung jawab untuk pengambilan data. Ini bisa dalam bentuk panggilan API ke server dan/atau basis data lokal. Modul ini juga berisi 
   implementasi repositori.
   
   - Repositori: Implementasi aktual dari repositori di lapisan Domain. Repositori bertanggung jawab untuk mengoordinasikan data dari berbagai Sumber Data.
   - Model DTO: Representasi struktur JSON yang memungkinkan kita untuk berinteraksi dengan sumber data.
   - Sumber Data: Terdiri dari Sumber Data jarak jauh dan lokal. Sumber Data jarak jauh akan melakukan permintaan HTTP pada API. Sedangkan Data Source lokal akan menyimpan data dalam cache atau 
     persist.
   - Pemeta (Mapper): Memetakan objek Entity ke Model dan sebaliknya.
   
   ##### d. Resources and Shared Library - dapat diakses oleh semua lapisan lainnya:
   - Sumber daya: Berisi aset (gambar, font, warna, dll), dan konfigurasi lainnya.
   - Pustaka Bersama: Berisi komponen yang dapat digunakan kembali, fungsi (navigasi, jaringan, dll), dan pustaka pihak ketiga.

   _source:_ [An Introduction to Flutter Clean Architecture](https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0)
   
### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
</details>
