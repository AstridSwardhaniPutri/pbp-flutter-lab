# README Tugas 7
### Nama : Astrid Swardhani Putri
### NPM : 2106707113
### Kelas : D


## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Jika suatu widget dapat memberikan perubahan ketika berinteraksi dengan _user_ maka widget tersebut merupakan stateful tetapi jika tidak memberikan perubahan apapun maka widget tersebut merupakan stateless. Seperti contoh icon, text, iconButton, dll.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Unordered sub-list.
* Scaffold :sebagai fondasi halaman
* AppBar : sebagai memuat title dalam halaman
* Center : widget akan ditempatkan dalam letak di tengah dalam halaman
* Column : teknik layouting dalam column
* Row : teknik layouting dalam row
* Text : membuat text dan melakukan styling pada text
* FloatingActionButton: membuat button secara fungsional dalam page
* dsb

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState adalah untuk memberitahukan widget bahwa ada objek yang berubah sehingga variabel yang akan terdampak dari aktivitas tersebut adalah argumen yang berada dalam setState.

## Jelaskan perbedaan antara const dengan final.
Perbedaan dari const dan final adalah const mengharuskan adanya nilai yang dimasukan sebelum compiling sebaliknya final tidak. Namun, keduanya sama-sama membuat suatu variabel bersifat tetap.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat flutter create counter_7
2. Mengubah title MyHomePage menjadi Program Counter
3. Membuat fungsi baru bernama _decrementCounter dan menambahkan code _counter-- untuk mengurangi angka
4. Membuat boolean pengecekan apakah angka lebih besar dari 0, nantinya boolean ini akan digunakan dalam decrement
5. Membuat conditional di dalam class widget untuk menentukan ganjil atau genap beserta mengubah warna textnya
6. Melakukan penempatan dan setup button agar sesuai
