# Mahfi Eğilmez - Türkiye Ekonomisinin Son 17 Yılı
- Bu çalışma içerisinde Altınbaş Üniversitesi, Ekonomi Bölümü, Dr. Öğr. Ü. Mahfi Eğilmez Hocamın
    "Türkiye Ekonomisinin Son 17 Yılı" içerisinde derlediği veriler analiz edilmektedir.
- İlgili yazıya şuradan ulaşıabilir: http://www.mahfiegilmez.com/2020/01/turkiye-ekonomisinin-son-17-yl.html
- Belirtilen kırılım "period" değişkeni altında kodlanmış olup, öncesi dönem period=0, sonrası dönem period=1 olarak işlenmektedir.
- Karşılaştırmalı gruplarda bağımsız örneklem sayısı 302un altında kaldığından "katsayısal olmayan" [non-parametrik, çev. Ümit Şenesen] testler dikakte alınmalıdır.
- Tüm çalışma açık kaynak kodlu olarak gerçekleştirilmiştir.
- İlgili kodlar mahfiegilmez.R dosyası indirilerek, veriler ise mahfiegilmez.{xlsx/csv} dosyaları indirilerek tekrarlanabilir.
/Y.

## Değişim veya Oransal Veriler Üzerine Bağımsız İki Örneklem Testleri
### GSYİH-USD Büyüme %D(GSYİH-USSD) rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **GSYH (USD)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test

data:  gsyihbuyumesi by period
W = 161, p-value = 0.5861
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  gsyihbuyumesi by period
t = 0.26178, df = 28.736, p-value = 0.7954
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -10.15978  13.14096
sample estimates:
mean in group 0 mean in group 1 
       9.240000        7.749412 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı %D(GSYİH) Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/01.gsyihbuyumesi.png)
### GSYİH-USD Büyüme %D(GSYİH-USSD) rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Kişi Başına Gelir (USD)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test

data:  kbgsyihbuyumesi by period
W = 152, p-value = 0.8119
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  kbgsyihbuyumesi by period
t = 0.18561, df = 30.102, p-value = 0.854
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -10.66067  12.79244
sample estimates:
mean in group 0 mean in group 1 
       7.611176        6.545294 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı %D(KBGSYİH) Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/02.kbgsyihbuyumesi.png)
### Büyüme rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Büyüme** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test with continuity correction

data:  buyume by period
W = 131.5, p-value = 0.488
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  buyume by period
t = -0.9599, df = 32.268, p-value = 0.3442
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -4.480043  1.609455
sample estimates:
mean in group 0 mean in group 1 
       3.900000        5.335294 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı Büyüme Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/03.buyume.png)
### İşsizlik rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **İşsizlik** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test with continuity correction

data:  issizlik by period
W = 7, p-value = 1.548e-06
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  issizlik by period
t = -7.5056, df = 28.534, p-value = 3.154e-08
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -3.698283 -2.113482
sample estimates:
mean in group 0 mean in group 1 
        8.00000        10.90588 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı İşsizlik Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/04.issizlik.png)
### Enflasyon rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **TÜFE** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test

data:  enflasyon by period
W = 306, p-value = 4.408e-10
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  enflasyon by period
t = 10.231, df = 18.024, p-value = 6.193e-09
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 44.85921 68.04079
sample estimates:
mean in group 0 mean in group 1 
          66.45           10.00 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı Enflasyon Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/05.enflasyon.png)
### Bütçe Dengesi rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Bütçe Dengesi / GSYH (%)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test with continuity correction

data:  butcedenge by period
W = 42.5, p-value = 0.0002803
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  butcedenge by period
t = -3.7561, df = 29.213, p-value = 0.0007659
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -5.367823 -1.583811
sample estimates:
mean in group 0 mean in group 1 
      -5.911111       -2.435294 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı Bütçe Dengesi Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/06.butcedengesi.png)
### Cari denge rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Cari Denge / GSYH (%)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test with continuity correction

data:  caridenge by period
W = 283.5, p-value = 1.772e-05
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  caridenge by period
t = 6.1298, df = 26.625, p-value = 1.595e-06
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 2.690181 5.400015
sample estimates:
mean in group 0 mean in group 1 
     -0.6666667      -4.7117647 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı Cari Denge Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/07.caridenge.png)
### Dış Borç Büyüme rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Dış Borç (Milyar USD)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.

	Wilcoxon rank sum test

data:  disborcbuyumesi by period
W = 171, p-value = 0.3753
alternative hypothesis: true location shift is not equal to 0



	Welch Two Sample t-test

data:  disborcbuyumesi by period
t = 0.91576, df = 31.605, p-value = 0.3667
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -3.144957  8.277899
sample estimates:
mean in group 0 mean in group 1 
      10.350000        7.783529 

- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.
- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.

### Yapısal Kırılmalı Dış Borç Eğilim Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/08.disborcbuyumesi.png)
# Yayım
Tüm hatalardan bu kodların sahibi sorumludur.
Geri bildirimleriniz için yasinkutuk@gmail.com.
Teşekkürler, /Y.
