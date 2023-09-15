/*============================ LIMIT ===========================
>Tablodaki verilerin belli bir kismini listelemek icin LIMIT
 komutunu kullaniriz.
>LIMIT komutundan sonra kullandigimiz sayi kadar kaydi bize getirir.
>Eger belirli bir aralikta calismak istiyorsak bu durumda 
iki sayi gireriz, ancak bu sayilardan ilki baslangic noktamizi 
ifade ederken ikincisi kac kayit getirecegimizi belirtir. Baslangic 
noktasi dahil edilmez!
===============================================================*/

-- 1) Isciler tablosundan ilk 5 kaydi getiriniz.
SELECT * FROM isciler
LIMIT 5;

-- 2) Isim sirali tablodan ilk 3 kaydi listeleyin.
SELECT * FROM isciler
ORDER BY isim
LIMIT 3;

-- 3) Maas sirali tablodan 5. kayittan 7. kayda kadar olan
-- kayitlarin isim ve sehir bilgilerini listeleyin.
SELECT isim,sehir
FROM isciler
ORDER BY maas
LIMIT 4,3;

-- 4) Maasi en yuksek 3 kisinin bilgilerini listeleyen sorguyu yaziniz.
SELECT *
FROM isciler
ORDER BY maas DESC
LIMIT 3;

-- 5) Maasi en dusuk 3 kisinin sadece isimlerini listeleyen sorguyu yaziniz.
SELECT isim
FROM isciler
ORDER BY maas 
LIMIT 3;

-- 6) Maasi en dusuk 3 kisinin sadece isimlerini, isim sirali listeleyen sorguyu yaziniz.
SELECT isim
FROM isciler
ORDER BY maas, isim 
LIMIT 3;

-- 7) Maas'i 4000'den buyuk olan ilk 3 kisinin sehrini listeleyin.
SELECT sehir
FROM isciler
WHERE maas > 4000
ORDER BY maas 
LIMIT 3;


/*============================ DISTINCT ===========================
    DISTINCT cumlecigi bir Sorgu ifadesinde benzer olan kayitlari
    filtrelemek icin kullanilir. Dolayisiyla secilen sutun veya 
    sutunlar icin benzersiz veri iceren satirlar olusturmaya yarar.
    
    Syntax :
    --------
    SELECT DISTINCT field_name1, field_name2,...
    FROM table_name
    
===============================================================*/

-- 1) Iscileri yasadiklari sehirler ile tekrarsiz listeleyin
SELECT DISTINCT sehir,isim
FROM isciler;

SELECT * FROM manav;


-- Group By'da bir fielda gore gruplama yapip, Aggregate Function'lar
-- yardimiyla baska bir field'da islem yapip bize islem yaptigi field'i
-- yeni bir field olarak donduruyor.DISTINCT cumlecigi bir Sorgu ifadesinde
-- benzer olan kayitlari filtrelemek icin kullanilir. DISTINCT komutu bize
-- bir field'daki kayitlarin tek bir ornegini dondurur.
