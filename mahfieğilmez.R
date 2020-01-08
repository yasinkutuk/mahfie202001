#MahfiEğilmez Statistical Tests

#The number of obs. was less than 30, NonPar. tests were used.

me <- read.csv(file='/home/yasin/Desktop/mahfiegilmez/mahfiegilmez.csv', sep=',')
me <- data.frame(sapply(me, function(x) as.numeric(as.character(x))))
attach(me)

w=850
h=500
#
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md')
sink.number(type = c("message"))
cat('# Mahfi Eğilmez - Türkiye Ekonomisinin Son 17 Yılı')
cat("\n")
cat('- Bu çalışma içerisinde Altınbaş Üniversitesi, Ekonomi Bölümü, Dr. Öğr. Ü. Mahfi Eğilmez Hocamın
    "Türkiye Ekonomisinin Son 17 Yılı" içerisinde derlediği veriler analiz edilmektedir.')
cat("\n")
cat('- İlgili yazıya şuradan ulaşıabilir: http://www.mahfiegilmez.com/2020/01/turkiye-ekonomisinin-son-17-yl.html')
cat("\n")
cat('- Belirtilen kırılım "period" değişkeni altında kodlanmış olup, öncesi dönem period=0, sonrası dönem period=1 olarak işlenmektedir.')
cat("\n")
cat('- Karşılaştırmalı gruplarda bağımsız örneklem sayısı 302un altında kaldığından "katsayısal olmayan" [non-parametrik, çev. Ümit Şenesen] testler dikakte alınmalıdır.')
cat("\n")
cat('- Tüm çalışma açık kaynak kodlu olarak gerçekleştirilmiştir.')
cat("\n")
cat('/Y.')

cat("\n")
cat("\n")
cat('## Değişim veya Oransal Veriler Üzerine Bağımsız İki Örneklem Testleri')
cat("\n")

#### 01.GSYİHB ####

cat('### GSYİH-USD Büyüme %D(GSYİH-USSD) rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi') #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **GSYH (USD)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.') #***

cat("\n")

wilcox.test(gsyihbuyumesi~period) #***

cat("\n")

t.test(gsyihbuyumesi~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.') #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.')
cat("\n")
sink()


png("/home/yasin/Desktop/mahfiegilmez/imgs/01.gsyihbuyumesi.png", width = w, height = h)  #***
ggplot(me, aes(x = yillar, y = gsyihbuyumesi,group=period)) +
  geom_point(alpha=0) +
  geom_line(aes(color = "GSYİH Büyümesi"), size = 0.2) + #***
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()



sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T) 
cat("\n")
cat('### Yapısal Kırılmalı %D(GSYİH) Eğilim Şekli') #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/01.gsyihbuyumesi.png)") #***
cat("\n")
sink()



#### 02.KBGSYİHB ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### GSYİH-USD Büyüme %D(GSYİH-USSD) rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Kişi Başına Gelir (USD)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(kbgsyihbuyumesi~period)  #***

cat("\n")

t.test(kbgsyihbuyumesi~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/02.kbgsyihbuyumesi.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = kbgsyihbuyumesi,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "KBGSYİH Büyümesi"), size = 0.2) +  #***
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()



sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı %D(KBGSYİH) Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/02.kbgsyihbuyumesi.png)")  #***
cat("\n")
sink()






#### 03.BÜYÜME ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### Büyüme rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Büyüme** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(buyume~period)  #***

cat("\n")

t.test(buyume~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/03.buyume.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = buyume,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "Büyüme"), size = 0.2) +  #***
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()


sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı Büyüme Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/03.buyume.png)")  #***
cat("\n")
sink()





#### 04.İŞSİZLİK ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### İşsizlik rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **İşsizlik** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(issizlik~period)  #***

cat("\n")

t.test(issizlik~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/04.issizlik.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = issizlik,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "İşsizlik"), size = 0.2) +  #***
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()


sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı İşsizlik Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/04.issizlik.png)")  #***
cat("\n")
sink()



#### 05.ENFLASYON ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### Enflasyon rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **TÜFE** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(enflasyon~period)  #***

cat("\n")

t.test(enflasyon~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/05.enflasyon.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = enflasyon,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "Enflasyon"), size = 0.2) +
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()


sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı Enflasyon Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/05.enflasyon.png)")  #***
cat("\n")
sink()




#### 06.BÜTÇE DENGESİ ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### Bütçe Dengesi rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Bütçe Dengesi / GSYH (%)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(butcedenge~period)  #***

cat("\n")

t.test(butcedenge~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/06.butcedengesi.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = butcedenge,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "Bütçe Dengesi"), size = 0.2) +
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()


sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı Bütçe Dengesi Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/06.butcedengesi.png)")  #***
cat("\n")
sink()




#### 07.CARİ DENGE ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### Cari denge rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Cari Denge / GSYH (%)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(caridenge~period)  #***

cat("\n")

t.test(caridenge~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/07.caridenge.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = caridenge,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "Cari Denge"), size = 0.2) +
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()


sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı Cari Denge Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/07.caridenge.png)")  #***
cat("\n")
sink()






#### 08. Dış Borç Büyümesi ####
sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat('### Dış Borç Büyüme rakamlarının karşılaştırılması (Katsayısal olmayan Mann-Whitney-U Bağımsız Örneklem Median Testi [bundan sonra MWU] ve Bağımsız Örneklem T-Testi')  #***
cat("\n")
cat('- Aşağıda 2002 yılı kırılım alınarak, ilgili yazıda **Dış Borç (Milyar USD)** altında yer alan rakamların büyüme oranları karşılaştırılmıştır.')  #***

cat("\n")

wilcox.test(disborcbuyumesi~period)  #***

cat("\n")

t.test(disborcbuyumesi~period) #***

cat('- Yukarıda, MWU testinin sonuçlarına göre iki period arasında farklılık bulunmamaktadır.')  #***
cat("\n")
cat('- Uyarlık bulunmamasına rağmen katsayısal olan (parametrik) t-testi yine de sunulmuş ancak yorumlanmamıştır.') 
cat("\n")
sink()



png("/home/yasin/Desktop/mahfiegilmez/imgs/08.disborcbuyumesi.png", width = w, height = h) 
ggplot(me, aes(x = yillar, y = disborcbuyumesi,group=period)) +  #***
  geom_point(alpha=0) +
  geom_line(aes(color = "Dış Borç Büyümesi"), size = 0.2) +
  stat_smooth(method = 'lm', aes(colour = 'Trend'), se = FALSE) +
  stat_smooth(method = "loess", aes(colour = 'Loess Curve')) 
dev.off()


sink(file = '/home/yasin/Desktop/mahfiegilmez/README.md', append = T)
cat("\n")
cat('### Yapısal Kırılmalı Dış Borç Eğilim Şekli')  #***
cat("\n")
cat("![alt text](https://github.com/yasinkutuk/mahfie202001/imgs/blob/master/imgs/08.disborcbuyumesi.png)")  #***
cat("\n")
sink()

