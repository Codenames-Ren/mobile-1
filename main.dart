//Flutter1
// Deklarasi Tipe data

void main() {
    String carName = 'Lamborghini';
    int unitTotal = 25;
    double carPrice = 25000.0;
    
    //Nullable variable
    /* ini bakal error ternyata kalo pake nullable operator biasa.
    solusinya biar gak error harus diubah jadi Null-Aware Assignment Operator dulu.
    supaya pas dijalanin pakai null assertion gak crash soalnya valuenya diisi lewat variabel
    soldOut */

    //ini deklarasi variable awalnya
    String? available = null;

    //kemudian isi nilainya disini supaya gak crash saat pakai assertion operator
    available ??= "Out of Stock";

    // Null-Aware Operator : pake tanda tanya (?) 2 kali, gunanya buat alternatif kao datanya null.
    String soldOut = available ?? 'Out of Stock'; //disini muncul warning karena variable available udah gak null lagi.
    
    // Nilai variable bisa diubah
    unitTotal = 0;
    
    print("Nama unit : $carName");
    print("Unit Tersedia : $unitTotal");
    print("Harga unit : \$ $carPrice");
    print("Ketersediaan : $soldOut");

    /*
    Null assertion Operator. Ngubah yang tadinya nullable jadi non-nullable
    ini gak bakal error karena udah diisi pakai null aware operator.
    */
    print(available!.toUpperCase());

    /* Tipe data final.
    Tipe data ini membuat variable cuma bisa diisi nilai satu kali. 
    setelahnya gak bisa lagi diganti.
    */

    final String purchaseNumber = 'ORD-0001'; //implisit dan udah ada nilainya
    final DateTime orderTime = DateTime.now();
    print("Nomor Order : $purchaseNumber $orderTime");
    
    // Const. Mirip kayak final, bedanya valuenya harus udah diisi sebelum compiler dijalankan.
    const double tax = 0.25;
    const String currency = "USD";

    print("$tax $currency");


    /* 
    Late Modifier. bisa dipake kalo tipe datanya non-nullable (ada valuenya)
    tapi nilainya di tentuin setelah deklarasi.
    */

    late String invoice;

    void invoiceNumber() {
      invoice = "ORD-${DateTime.now().millisecondsSinceEpoch}";
      print(invoice);
    }

    // Tipe data num
    num value = 9;
    value = 9.5;
    print(value);

    //Tipe data list 
    List<int> deretAngka = [
      10,
      9,
      8,
    ];

    //index dimulai dari 0 sampe N (index paling akhir)
    print(deretAngka[0]);
    print(deretAngka[1]);

    //Set
    Set<int> angka = {
      20,
      20, //gak akan ikut ke print karena nilainya duplikat
      21,
      22,
    };

    print(angka);

    //map nyimpen data sebagai pasangan kunci dan nilai. Mirip response json dari API
    //Dynamic artinya valuenya bisa punya tipe data yang beda beda (gak cuma 1 tipe data)
    Map<String, dynamic> mobil = {
    'nama_unit': 'Lamborgini',
    'tahun_produksi': "2025",
    'garansi': "5 tahun",
    };

    print(mobil['nama_unit']);
    print(mobil['tahun_produksi']);

}