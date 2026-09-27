# Tugas 1 Matakuliah Mobile Programming

## Tipe Data Dasar
<b>int (integer) </b> : Digunakan buat nyimpen angka tanpa desimal (bilangan bulat) <br>
<b>double </b> : buat nyimpen angka desimal <br>
<b>String </b>: Nyimpen teks atau karakter. cara penggunaannya dengan menggunakan tanda kutip 1 (') atau kutip dua (") <br>
<b>bool (boolean) </b> : nyimpen logika benar (true) atau salah (false) <br>
<b> num </b> bisa nyimpen nilai int maupun double jika nilainya bisa bilangan bulat atau desimal. Tapi kalo datanya udah tau dari awal, lebih baik deklarasi pakai int atau double biar lebih jelas. <br>
<b>list</b> gunanya buat nyimpen banyak data dari tipe data yang sama, misal kayak kumpulan data string, integer atau double. Tipe data ini biasanya diindex berdasarkan urutan ke-0 sebagai paling awalnya<br>
<b>Set</b> Mirip list tapi gak simpen nilai duplikat kayak list. <br>
<b>Map<b> Nyimpen data sebagai pasangan key dan value. mirip response berbentuk api json.


## Sound Null Safety
Variable yang pakai tanda tanya (?) saat deklarasi variablenya otomatis bersifat nullable (bisa diisi string maupun null). Ada juga Null-Aware Operator ditandai dengan 2 tanda tanya (??) yang berguna untuk memberikan fallback jika datanya bernilai Null. Namun untuk deklarasi biasa, datanya tidak bisa diubah (Not Nullable) ini jika diisi null akan error dan tidak bisa di compile. sementara untuk Null Assertion Operator ini ditandai dengan tanda seru (!). Gunanya buat ngubah variable yang tadinya nullable jadi non nullable. tapi bakal error kalo isinya null.

## Final
Final nilai variabelnya hanya bisa di isi satu kali pas aplikasi berjalan. Setelahnya gak bisa diubah ubah lagi valuenya.

## Const
Nilainya harus ada dulu sebelum program di run (compile). Karena deklarasi ini butuh value yang jelas dan gak bergantung sama input setelah program berjalan. Bedanya sama final, kalo final valuenya tetap setelah compile berjalan, sementara const sebelum berjalan valuenya harus sudah ada.

## Late Modifier
Bisa dipakai kalo tope datanya non-nullable (ada valuernya). Gunanya buat nentuin value sebelum kodenya dibaca compiler. Misal diawal deklarasi tipe datanya dulu, lalu dibawahnya tipe data itu baru diisi valuenya. ini bakal tetep aman setelah di inisiasi.