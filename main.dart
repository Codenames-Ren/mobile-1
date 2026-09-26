//Flutter1
// Deklarasi Tipe data

void main() {
    String carName = 'Lamborghini';
    int unitTotal = 25;
    double carPrice = 25000.0;
    
    //Nullable variable
    String? available = null;

    // Null-Aware Operator : pake tanda tanya (?) 2 kali, gunanya buat alternatif kao datanya null.
    String soldOut = available ?? 'Out of Stock';
    
    // Nilai variable bisa diubah
    unitTotal = 0;
    
    print("Nama unit : $carName");
    print("Unit Tersedia : $unitTotal");
    print("Harga unit : $carPrice");
    print("Ketersediaan : $soldOut");
}