[1] 2
# Mahfi Eğilmez - Türkiye Ekonomisinin Son 17 Yılı
- Bu çalışma içerisinde Altınbaş Üniversitesi, Ekonomi Bölümü, Dr. Öğr. Ü. Mahfi Eğilmez Hocamın
    "Türkiye Ekonomisinin Son 17 Yılı" içerisinde derlediği veriler analiz edilmektedir.
- İlgili yazıya şuradan ulaşıabilir: http://www.mahfiegilmez.com/2020/01/turkiye-ekonomisinin-son-17-yl.html
- Belirtilen kırılım "period" değişkeni altında kodlanmış olup, öncesi dönem period=0, sonrası dönem period=1 olarak işlenmektedir.
- Karşılaştırmalı gruplarda bağımsız örneklem sayısı 302un altında kaldığından "katsayısal olmayan" [non-parametrik, çev. Ümit Şenesen] testler dikakte alınmalıdır.
- Tüm çalışma açık kaynak kodlu olarak gerçekleştirilmiştir.
/Y.

## Değişim veya Oransal Veriler Üzerine Bağımsız İki Örneklem Testleri
### GSYİH Büyüme rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi
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

### Yapısal Kırılmalı %D(GSYİH) Şekli
![alt text](https://github.com/yasinkutuk/mahfie202001/blob/master/imgs/01.gsyihbuyumesi.jpg)
