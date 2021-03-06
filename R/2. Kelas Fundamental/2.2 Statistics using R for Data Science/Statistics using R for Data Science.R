# Statistics using R for Data Science

# Dasar-dasar Statistik

# Membaca Dataset dengan read.csv


#Membaca dataset dengan read.csv dan dimasukkan ke variable data_intro
data_intro <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_intro.csv",sep=";")
data_intro


# Melihat Tipe Data dengan Str


# Membaca dataset dengan read.csv dan dimasukkan ke variable data_intro
data_intro <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_intro.csv",sep=";")
str(data_intro)


# Merubah Tipe Data Kolom ID.Pelanggan menjadi Character


## mengubah data menjadi karakter karena tidak dilakukan analisis statistik pada variabel ID Pelanggan
data_intro$ID.Pelanggan<-as.character(data_intro$ID.Pelanggan)
data_intro$Nama<-as.character(data_intro$Nama)

## melihat apakah sudah berhasil dalam mengubah variabel tersebut
str(data_intro$ID.Pelanggan)
str(data_intro$Nama)


# Merubah Sejumlah Kolom menjadi Data Kategorik (Factor)


## Mengubah data menjadi factor untuk membedakan data kualitatif dengan menggunakan functon as.factor
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)
## Melihat apakah sudah berhasil dalam mengubah variabel tersebut dengan menggunakan function str
str(data_intro$Jenis.Kelamin)
str(data_intro$Produk)
str(data_intro$Tingkat.Kepuasan)


# Skala Pengukuran Data


# melihat data/ pemanggilan data
data_intro
# melihat tipe data
str(data_intro)


# Estimasi Nilai Statistik Modus


library(pracma)
## carilah modus untuk kolom Produk pada variable data_intro
Mode(data_intro$Produk)
## carilah modus untuk kolom Tingkat.Kepuasan pada variable data_intro
Mode(data_intro$Tingkat.Kepuasan)


# Estimasi Nilai Statistik Median


## carilah median untuk kolom Pendapatan dari variable data_intro
median(data_intro$Pendapatan) 

## carilah median untuk  kolom Harga dari variable data_intro
median(data_intro$Harga) 

## carilah median untuk kolom Jumlah dari variable data_intro
median(data_intro$Jumlah) 

## carilah median untuk  kolom Total dari variable data_intro
median(data_intro$Total) 


# Estimasi Nilai Statistik Rata-Rata


## carilah mean untuk kolom Pendapatan pada variable data_intro
mean(data_intro$Pendapatan)
## carilah mean untuk kolom Harga pada variable data_intro
mean(data_intro$Harga)
## carilah mean untuk kolom Jumlah pada variable data_intro
mean(data_intro$Jumlah)
## carilah mean untuk kolom Total pada variable data_intro
mean(data_intro$Total)


# Estimasi Nilai Sebaran Data Range


## carilah range untuk kolom Pendapatan pada variable data_intro
max(data_intro$Pendapatan)-min(data_intro$Pendapatan)


# Estimasi Nilai Sebaran Data Varians


## Carilah varians untuk kolom Pendapatan dari variable data_intro
var(data_intro$Pendapatan)


# Estimasi Nilai Sebaran Data Simpangan Baku


## Carilah simpangan baku untuk kolom Pendapatan dari variable data_intro
sd(data_intro$Pendapatan)


# Analisis Data Sederhana

# Analisis Deskriptif Menggunakan Nilai Statistik


## carilah summary data dari data_intro
summary(data_intro)


# Analisis Deskriptif Menggunakan Visualisasi


## carilah sebaran data dari Jenis Kelamin
plot(data_intro$Jenis.Kelamin)

## carilah sebaran data dari Pendapatan
hist(data_intro$Pendapatan)

## carilah sebaran data dari Produk
plot(data_intro$Produk)

## carilah sebaran data dari Harga
hist(data_intro$Harga)

## carilah sebaran data dari Jumlah
hist(data_intro$Jumlah)

## carilah sebaran data dari Total
hist(data_intro$Total)

## carilah sebaran data dari Tingkat Kepuasan
plot(data_intro$Tingkat.Kepuasan)


# Scatter Plot


plot(data_intro$Pendapatan,data_intro$Total)


# Hubungan Pendapatan dengan Total Belanja dengan cor.test


#Gunakan cor.test untuk mencari hubungan Pendapatan dengan Total Belanja 
cor.test(data_intro$Pendapatan,data_intro$Total)


# Hubungan Produk dengan Tingkat Kepuasan dengan chisq.test


## Carilah tabulasi silang antara kolom jenis produk (Produk) dan tingkat kepuasan (Tingkat.Kepuasan) dari variable data_intro
table(data_intro$Produk,data_intro$Tingkat.Kepuasan)

## Analisis bagaimana hubungan jenis produk dengan tingkat kepuasan mengunakan uji korelasi
chisq.test(table(data_intro$Produk,data_intro$Tingkat.Kepuasan))


# Hubungan Jenis Kelamin dengan Total Belanja dengan t.test


## carilah boxplot antara variabel jenis kelamin dengan total belanja
boxplot(Total~Jenis.Kelamin,data = data_intro)
## analisis bagaimana hubungan jenis kelamin dengan total belanja mengunakan uji statistik t-test
t.test(Total~Jenis.Kelamin,data = data_intro)
