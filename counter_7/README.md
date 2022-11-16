# README Tugas 7
### Nama : Astrid Swardhani Putri
### NPM : 2106707113
### Kelas : D


## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Jika suatu widget dapat memberikan perubahan ketika berinteraksi dengan _user_ maka widget tersebut merupakan stateful tetapi jika tidak memberikan perubahan apapun maka widget tersebut merupakan stateless. Seperti contoh icon, text, iconButton, dll.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
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

###
###

# README Tugas 8
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Perbedaan dari Navigator.push dan Navigator.pushReplacement adalah .push menambah route atau page baru ke dalam stack dan cocok untuk penggunaan dengan jumlah route yang terbatas seperti satu atau dua route. Sedangkan .pushReplacement merupakan cara navigasi dengan mengganti halaman yang kita berada saat ini dengan halaman baru yang ingin dibuka. 
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. OnPressed
2. OnChanged
3. OnSaved
4. OnClicked

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Dalam FLutter, screen disebut dengan routes dan routes juga merupakan widget. Widget navigator menampilkan screen sebagai stack dan untuk menavigasikan ke screen baru, harus dilakukan pengaksesan dari navigator dalam route BuildContext dan memanggil imperative methods seperti push atau pop. Lalu MaterialPageRoute merupakan subclass dari routes yang menspesifikasikan transisi animasi untuk material design. 
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambah widget drawer dalam scaffold dengan menambah tiga ListTile untuk tiga menu dalam drawer
2. Membuat page baru yaitu page form dan page untuk menampilkan data dari form
3. Melakukan setup seperti membuat TextFormField untuk judul dan nominal dan ListTile dengan jenis dropdown untuk pilihan tipe atau jenis data
4. Lalu dilakukan integrasi data dari form untuk ditunjukan dalam file menunjukan data dengan melakukan import data dari file main, form, dan dataBudget
