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
   **+ BONUS**
   1. install Flutter untuk windows dari cmd di direktori yang mau ditempatkan oleh folder proyek
   2. masuk ke direktori proyek dan create project flutter
   3. buat file baru menu.dart dalam direktori backpocket/lib untuk membuat menu utama pada aplikasi
   4. buat class MyHomePage dan class MyHomePageState pada file menu.dart
   5. import menu.dart ke main.dart
   6. ubah menu.dart dari stateful menjadi stateless
   7. Tambah list yang berisi ShopItem agar dapat menampilkan tombol-tombol di home
   8. Set Scaffold agar format tombol dapat di-scroll, memiliki padding, dan di-set menjadi gridView
   9. buat widget stateless bernama ShopCard untuk menampilkan card dengan atribut name, icon, dan color (agar tiap ShopCard mempunyai warna yang berbeda)
```dart
class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}
```
   10. Tambahkan argumen warna untuk masing-masing ShopCard
```dart
  final List<ShopItem> items = [
    ShopItem("View Items", Icons.checklist, (Colors.green[200])!),
    ShopItem("Add Item", Icons.add_shopping_cart, (Colors.orange[100])!),
    ShopItem("Logout", Icons.logout, (Colors.red[300])!),
  ];
```
   12. push kode ke repositori github
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

<p align="center">
   <image src= "https://github.com/sorfeb/backpocket/assets/112263712/46b902bb-daa1-4fcc-8d36-4d3387fc45bf">
</p>

   #### Layers
   ##### a. **Feature Layer** - lapisan presentasi aplikasi
   lapisan ini merupakan lapisan yang paling bergantung pada framework, karena berisi UI dan penangan peristiwa UI yang menggunakan widget untuk menampilkan tampilan.
   Widget ini dikontrol oleh state menggunakan berbagai pola desain manajemen state yang digunakan dalam Flutter.
   
   - Halaman: Ini adalah halaman-halaman aplikasi kita.
   - Manajemen State: BLoC, Penyedia, GetX, dll.
   - Widget: Widget spesifik lainnya yang dibutuhkan oleh halaman kami.
   
   ##### b. **Domain Layer** - bagian paling dalam dari lapisan (tidak ada ketergantungan dengan lapisan lain) dan berisi Entitas, Kasus Penggunaan & Antarmuka Repositori.
   ditulis murni dalam Dart tanpa elemen Flutter. Alasannya adalah bahwa domain seharusnya hanya berkaitan dengan logika bisnis aplikasi. Hal ini juga memungkinkan migrasi yang mudah antar platform, 
   jika ada masalah yang muncul.
   
   - Kasus Penggunaan: Aturan-aturan bisnis khusus aplikasi
   - Entitas: Objek bisnis dari aplikasi
   - Repositori: Kelas abstrak yang mendefinisikan fungsionalitas yang diharapkan dari lapisan luar
   
   ##### c. **Data Layer**  - lapisan data aplikasi
   Modul Data, yang merupakan bagian dari lapisan terluar, bertanggung jawab untuk pengambilan data. Ini bisa dalam bentuk panggilan API ke server dan/atau basis data lokal. Modul ini juga berisi 
   implementasi repositori.
   
   - Repositori: Implementasi aktual dari repositori di lapisan Domain. Repositori bertanggung jawab untuk mengoordinasikan data dari berbagai Sumber Data.
   - Model DTO: Representasi struktur JSON yang memungkinkan kita untuk berinteraksi dengan sumber data.
   - Sumber Data: Terdiri dari Sumber Data jarak jauh dan lokal. Sumber Data jarak jauh akan melakukan permintaan HTTP pada API. Sedangkan Data Source lokal akan menyimpan data dalam cache atau 
     persist.
   - Pemeta (Mapper): Memetakan objek Entity ke Model dan sebaliknya.
   
   ##### d. **Resources and Shared Library** - dapat diakses oleh semua lapisan lainnya:
   - Sumber daya: Berisi aset (gambar, font, warna, dll), dan konfigurasi lainnya.
   - Pustaka Bersama: Berisi komponen yang dapat digunakan kembali, fungsi (navigasi, jaringan, dll), dan pustaka pihak ketiga.

   _source:_ [An Introduction to Flutter Clean Architecture](https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0)
   
### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
   **+ BONUS**
   1. Organisir files-files dalam direktori `lib` agar rapi dengan menambahkan folder `screens` dan `widgets`.
   2. `screens` berisi `menu.dart`.
   3. `widgets` berisi `shop_card.dart` dan `left_drawer.dart`.
   4. Buat file baru bernama `itemslist_form.dart` dan isi dengan kode untuk form mendaftar item baru dan juga tambahkan list untuk menampung item yang baru ditambahkan dengan nama `formAddedItems`.
   ```dart
import 'package:flutter/material.dart';
import 'package:backpocket/widgets/left_drawer.dart';
import 'package:backpocket/widgets/item_card.dart';

List<RegisteredItem> formAddedItems = [];

class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _price = 0;
    int _quantity = 0;
    String _description = "";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Add New Item',
              ),
            ),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
          ),
          drawer: const LeftDrawer(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama Produk",
                            labelText: "Nama Produk",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _name = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Nama tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Harga",
                            labelText: "Harga",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _price = int.parse(value!);
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Harga tidak boleh kosong!";
                            }
                            if (int.tryParse(value) == null) {
                              return "Harga harus berupa angka!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Quantity",
                            labelText: "Quantity",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _quantity = int.parse(value!);
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Quantity can't be 0!";
                            }
                            if (int.tryParse(value) == null) {
                              return "Quantity can't be 0!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Deskripsi",
                            labelText: "Deskripsi",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _description = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Deskripsi tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                RegisteredItem newItem = RegisteredItem(
                                  _name, 
                                  _price, 
                                  _quantity,
                                  _description
                                );
                              formAddedItems.add(newItem);

                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('Produk berhasil tersimpan'),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Name: $_name'),
                                            Text('Price: $_price'),
                                            Text('Qty: $_quantity'),
                                            Text('Description: $_description'),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          child: const Text('OK'),
                                          onPressed: () {
                                            Navigator.pop(context); // Close dialog
                                            Navigator.pop(context); //Close form page and return to Home
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );

                              }
                              _formKey.currentState!.reset();
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                    ] 
              ),
            ),
          ),
        );
    }
}
```
   6. Buat class baru bernama `RegisteredItem` untuk menampung atribut-atribut seperti nama dll. agar menjadi object yang dapat ditampilkan di halaman View Items
```dart
class RegisteredItem{
  final String name;
  final int price;
  final int quantity;
  final String description;

  RegisteredItem(this.name, this.price, this.quantity, this.description);
}
```
   7. Buat file baru bernama `itemslist_form.dart` untuk menampilkan seluruh Items yang pernah ditambahkan dari form `itemslist_form.dart`.
```dart
import 'package:flutter/material.dart';
import 'package:backpocket/widgets/left_drawer.dart';
import 'package:backpocket/widgets/item_card.dart';

List<RegisteredItem> formAddedItems = [];

class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _price = 0;
    int _quantity = 0;
    String _description = "";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Add New Item',
              ),
            ),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
          ),
          drawer: const LeftDrawer(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama Produk",
                            labelText: "Nama Produk",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _name = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Nama tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Harga",
                            labelText: "Harga",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _price = int.parse(value!);
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Harga tidak boleh kosong!";
                            }
                            if (int.tryParse(value) == null) {
                              return "Harga harus berupa angka!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Quantity",
                            labelText: "Quantity",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _quantity = int.parse(value!);
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Quantity can't be 0!";
                            }
                            if (int.tryParse(value) == null) {
                              return "Quantity can't be 0!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Deskripsi",
                            labelText: "Deskripsi",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _description = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Deskripsi tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                RegisteredItem newItem = RegisteredItem(
                                  _name, 
                                  _price, 
                                  _quantity,
                                  _description
                                );
                              formAddedItems.add(newItem);

                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('Produk berhasil tersimpan'),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Name: $_name'),
                                            Text('Price: $_price'),
                                            Text('Qty: $_quantity'),
                                            Text('Description: $_description'),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          child: const Text('OK'),
                                          onPressed: () {
                                            Navigator.pop(context); // Close dialog
                                            Navigator.pop(context); //Close form page and return to Home
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );

                              }
                              _formKey.currentState!.reset();
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                    ] 
              ),
            ),
          ),
        );
    }
}
```
   8. Jangan lupa untuk menambahkan argumen formAddedItems ke ShopCard "View Items"
```dart
            else if (item.name == "View Items") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemsListPage(addedItems: formAddedItems))
              );
            }
```
</details>

## Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter
<details>
<summary>Answers</summary> 
   
### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
   Iya, pengambilan data JSON tanpa membuat model terlebih dahulu memungkinkan.
   Namun, **dianjurkan lebih baik membuat model** terlebih dahulu sebelum mengambil data JSON. Hal ini karena model dapat membuat definisi data menjadi lebih terstruktur dan memastikan apakah data tersebut valid. Tanpa model, 
   akan sulit untuk menangani error dan memastikan bahwa data digunakan dengan benar. **(Separation of Concerns)**

### 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
   Dalam tugas ini, terdapat fitur login yang dapat menyimpan data-data user aplikasi tersebut yang hanya dapat diakses oleh masing-masing akun secara ekslusif. Cookie dapat menyimpan informasi login, pengaturan website, dan
   menyediakan konten yang lebih personal sehingga lebih gampang untuk memanajemen otentikasi pengguna dan penyimpanan data sesi user. CookieRequest dapat me_request_ data cookie dari web django agar widget flutter
   menampilkan data sesuai dengan data user pribadi  _item_ apa saja yang sudah ditambah.
    
### 3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
   1. `_HTTP request_` dilakukan lewat package tambahan yakni package `http`..
   2. Aplikasi Flutter mengakses internet karena sudah diberi akses internet lewat file `android/app/src/main/AndroidManifest.xml` yang sudah tertulis dalam kode:
```dart
   ...
       <application>
       ...
       </application>
       <!-- Required to fetch data from the Internet. -->
       <uses-permission android:name="android.permission.INTERNET" />
   ...
```
   3. _Screen_ `list_product.dart` mengimpor model `product.dart` agar dapat menampilkan data sesuai dengan format model `product.dart`.
   4.  _Screen_ `list_product.dart` mem-_fetch_ data `product` user dengan fungsi:
   ```dart
   Future<List<Product>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'http://<URL_APP_KAMU>/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
   }
   ```
    
### 4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
   1. Input Data Akun pada Halaman `LOGIN` flutter:
       - Pengguna memasukkan data akun, seperti nama pengguna dan kata sandi, melalui antarmuka pengguna di aplikasi Flutter.
   2. Permintaan Autentikasi ke Django:
      - Aplikasi Flutter mengirim permintaan autentikasi ke backend Django, biasanya melalui permintaan HTTP POST yang berisi data akun yang dimasukkan pengguna.
   3. Proses Autentikasi oleh Django:
      - Django memeriksa data akun yang diterima dari Flutter, memverifikasi kebenaran data tersebut, dan menghasilkan token autentikasi jika autentikasi berhasil.
   4. Pengembalian Token ke Flutter:
      - Jika autentikasi berhasil, Django mengembalikan token autentikasi ke aplikasi Flutter sebagai respons dari permintaan autentikasi.
   5. Penyimpanan Token di Flutter:
      - Aplikasi Flutter menyimpan token autentikasi yang diterima dari Django, biasanya dalam penyimpanan lokal seperti shared_preferences atau flutter_secure_storage.
   6. Tampilan Menu pada Flutter:
      - Setelah menerima token autentikasi, aplikasi Flutter menggunakan token tersebut untuk mengakses endpoint yang memerlukan autentikasi di backend Django, misalnya untuk mendapatkan data menu yang diperlukan.
   7. Menampilkan Menu pada Flutter:
      - Data menu yang diterima dari Django ditampilkan pada antarmuka pengguna aplikasi Flutter, seperti dalam bentuk daftar menu atau tautan navigasi.

### 5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
   - `AppBar`: Widget yang akan menampilkan bilah aplikasi pada bagian atas halaman.
   - `MaterialApp`: Widget root untuk menginisialisasi Flutter.
   - `SingleChildScrollView`: Widget yang memungkinkan kontennya dapat di-scroll jika melebihi ukuran layar.
   - `Column`: Widget yang mengatur widget-chil_d secara vertikal.
   - `Text`: Widget untuk menampilkan teks.
   - `SizedBox`: Widget untuk memberikan ruang kosong dengan size tertentu.
   - `ElevatedButton`: Widget untuk membuat tombol dengan latar belakang.
   - `Scaffold`: Widget yang menyediakan struktur dasar untuk halaman, termasuk AppBar, Drawer, dan body.
   - `LeftDrawer`: Widget kustom untuk konten drawer di sisi kiri halaman.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
   -  integrasi web app **hammerspace** dan flutter app **backpocket** dengan menambahkan app `authentication` agar user dapat login ke **backpocket** dengan akun dari **hammerspace**.
   -  Tambahkan cookies untuk semua widget di **backpocket** agar data ditampilkan sesuai milik user mengunakan package `http` dan `pbp_django_auth`.
   -  Buat model kustom `item.dart` dengan mengkonversi format json dari **hammerspace** menjadi kode dart.
   -  Buat fungsi autentikasi fungsi-fungsi khusus flutter app (`login`, `logout`, dan `create-item-flutter`) di app `authentication` pada web app **hammerspace**.
   -  Memodifikasi form item yang sudah ada `itemlist_form.dart` dengan menyesuaikan dengan cookies user saat ini.
   -  Memodifikasi penampil item terdaftar yang sudah ada `itemlist_page.dart` dengan menyesuaikan dengan cookies user saat ini.
   -  Mengubah semua fungsi `onTap()` dengan menambahkan `async` agar data termuat secara asinkronus.
     
</details>

- Buat halaman yang berisi daftar item. Hal tersebut dilakukan dengan menghubungkan web tugas Django ke tugas Flutter. Kemudian, jangan lupa untuk tampilkan _name_, _amount_, dan _description_ masing-masing _item_.

- Buat halaman yang berisi detail item. Hal ini dilakukan dengan membuat tombol detail pada `list_product.dart`.
  
 </details>
