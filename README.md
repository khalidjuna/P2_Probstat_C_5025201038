# P2_Probstat_C_5025201038
#Praktikum 2

Nomor 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen. Berikut datanya:
![image](https://user-images.githubusercontent.com/87630117/170878592-e45001a9-3565-4c5f-8b61-e085937bca3d.png)

soal 1
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

1a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
Langkah pertama penyelesaian adalah memasukkan semua data yang ada pada tabel pada sebuah variabel sebagai berikut

before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

Standar deviasi sebelum aktivitas adalah:

SD_before <- sd(before)
SD_before
Sehingga diperoleh hasil : 15.66844

Standar deviasi setelah aktivitas adalah:

SD_after <-sd(after)
SD_after
Sehingga diperoleh hasil :  8.833333

1b
carilah nilai t (p-value)
mencari nilai p-value menggunakan fungsi t.test:

t.test(before, after, alternative = "greater", var.equal = FALSE)
Sehingga diperoleh hasilnya:
![image](https://user-images.githubusercontent.com/87630117/170879154-76b6283f-409f-4747-9a3e-5c56330af7eb.png)

1c
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

Pertama melihat hasil komparasi dua variabel
var.test(before, after)

Selanjutnya, untuk melihat pengaruh jika tingkat signifikasi 5% dan tidak ada pengaruh yang signifikan secara statistika, maka adalah sebagai berikut

t.test(before, after, var.equal = TRUE)

Nomor 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

2a
Setuju
2b
![image](https://user-images.githubusercontent.com/87630117/170879648-4deb6bd0-6282-46e9-bad2-bccb6a2efbe8.png)
Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi = 3900 Maka null hipotesis adalah

H0 : μ = 20000
Alternatif hipotesisnya yaitu

H1 : μ > 20000
2c 
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
Mencari nilai Z
![image](https://user-images.githubusercontent.com/87630117/170879849-a5fd516d-7ddb-4d42-bd12-21e51ac9c027.png)

Nilai p-value :
![image](https://user-images.githubusercontent.com/87630117/170879902-fae8f6f0-25db-45d9-b6a8-6ce87d79ffb3.png)
![image](https://user-images.githubusercontent.com/87630117/170879914-8e572a6a-8bac-4e07-abd5-d088371e1bef.png)
Kesimpulanya adalah mobil dikemudikan rata-rata lebih dari 20.000km per tahun

Nomor 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
![image](https://user-images.githubusercontent.com/87630117/170880053-6269d03c-760c-4232-9504-94e239116224.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

3a
H0
![image](https://user-images.githubusercontent.com/87630117/170880132-0ff8725f-6b6f-44e8-8188-dcdee15fa40e.png)
H1
![image](https://user-images.githubusercontent.com/87630117/170880152-eddf5139-4672-4506-b508-20edaa932434.png)

3b
Hitung Sampel Statistik Penghitungan dilakukan sebagai berikut
