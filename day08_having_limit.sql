/*======================== HAVING CLAUSE =======================
    HAVING, AGGREGATE FUNCTION'lar ile birlikte kullanilan 
FILTRELEME komutudur.
    Aggregate fonksiyonlar ile ilgili bir kosul koymak 
icin GROUP BY'dan sonra HAVING cumlecigi kullanilir.  
 Yeni create ettigimiz bir field uzerinden filtreleme yaptigimiz icin
 WHERE cumlecigini kullanamayiz, WHERE cumlecigi sadece tablomuzda var olan
 field'lar icin bir filtreleme yapar.
  
===============================================================*/
CREATE TABLE isciler
(
id int,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)
);
INSERT INTO isciler VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');
INSERT INTO isciler VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO isciler VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500,'Honda');
INSERT INTO isciler VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');
INSERT INTO isciler VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO isciler VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');
INSERT INTO isciler VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');
SELECT * FROM isciler;

-- Sirketlere gore toplam isci sayisini listeleyiniz
SELECT sirket, COUNT(isim)isci_sayisi
FROM isciler
GROUP BY sirket;

-- 1) Sirketlere gore isci_sayisini 1'den buyukse yazdiriniz
SELECT sirket, COUNT(isim)isci_sayisi
FROM isciler
GROUP BY sirket
HAVING isci_sayisi > 1 ;

-- 2) Toplam geliri 8000 liradan fazla olan isimleri gosteren sorgu yaziniz
SELECT isim, SUM(maas)top_gelir
FROM isciler
GROUP BY isim
HAVING top_gelir > 8000;

-- 3) Her sirketin MIN maaslarini eger 4000'den buyukse goster.
SELECT sirket, MIN(maas)maas
FROM isciler
GROUP BY sirket
HAVING maas > 4000;




-- 4) Eger bir sehirde alinan MAX maas 5000'den dusukse sehir ismini
-- ve MAX maasi veren sorgu yaziniz
SELECT sehir, MAX(maas)max_maas
FROM isciler
GROUP BY sehir
HAVING max_maas < 5000;

-- 5) Eger bir sehirde alinan MAX maas 5000'den buyukse sehir ismini
-- ve MAX maasi, sehir isim sirali veren sorgu yaziniz
SELECT sehir, MAX(maas)max_maas
FROM isciler
GROUP BY sehir
HAVING max_maas > 5000
ORDER BY sehir;

-- 6) Eger bir sehirde alinan MAX maas 5000'den buyukse ve sehir ismi
-- 'I' harfi ile basliyorsa o sehirleri ve MAX maasi, maas
-- sirali veren sorgu yaziniz
SELECT sehir, MAX(maas)max_maas
FROM isciler
WHERE sehir LIKE 'i%'
GROUP BY sehir
HAVING max_maas > 5000
ORDER BY sehir;

/*============================ LIMIT ===========================
>Tablodaki verilerin belli bir kismini listelemek icin LIMIT
 komutunu kullaniriz.
>LIMIT komutundan sonra kullandigimiz sayi kadar kaydi bize getirir.
>Eger belirli bir aralikta calismak istiyorsak bu durumda 
iki sayi gireriz, ancak bu sayilardan ilki baslangic noktamizi 
ifade ederken ikincisi kac kayit getirecegimizi belirtir. Baslangic 
noktasi dahil edilmez!
===============================================================*/





