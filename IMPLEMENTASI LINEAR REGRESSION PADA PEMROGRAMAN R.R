# input data tinggi dan berat badan
tinggi = c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 
berat = c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 
tinggi
berat

# sintaks fungsi lm()
# lm(formula, data)

# membuat model hubungan antara tinggi dan berat badan 
relasi <- lm(berat~tinggi)

# mengetahui koefisien dari model 
relasi

# persamaan linear regression
# berat = 0.6746x -38455
# berat = 0.6746tinggi -38455
y <- -384551 + 0.6746 

# mengetahui rangkuman (summary) dari model 
summary.lm(relasi)

# melakukan prediksi dengan fungsi predict()
# jika ingin mengetahui berat seseorang yang memiliki tinggi 170, 
# maka proses prediksi dapat dilakukan dengan cara di bawah ini. 
data_baru <- data.frame(tinggi = 170)
prediksi_data_baru  <- predict(relasi, data_baru)

# hasil  prediksi  berat  orang  dengan  tinggi  170  dapat  dilihat  
# dengan  memanggil  variable prediksi_data_baru
prediksi_data_baru

# membuat visualisasi model dan prediksi (tinggi 170)
plot(tinggi, berat, col = "blue", main = "Regresi Tinggi & Berat", cex = 1.3,
     pch = 16, xlab = "Tinggi(cm)", ylab = "Berat(kg)") 

abline(lm(berat~tinggi)) 

points(170, prediksi_data_baru, col = "red", cex = 1.3, pch = 20)

# memprediksi tinggi 185 dan memvisualisasikan data
data_baru <- data.frame(tinggi = 185)
prediksi_data_baru  <- predict(relasi, data_baru)
prediksi_data_baru
points(185, prediksi_data_baru, col = "green", cex = 1.3, pch = 20)

