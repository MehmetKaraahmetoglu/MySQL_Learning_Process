/*========================================
        VERI GIRISI - INSERT 
========================================*/
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken husus, tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi.
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.

/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
*********************************************************/

-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.

CREATE TABLE fen_lisesi(
okul_no INT UNIQUE,
isim VARCHAR(20) NOT NULL,
derece DOUBLE,
adres VARCHAR(30),
son_degisiklik_tarihi DATE
);
SELECT * FROM fen_lisesi;
-- UNIQUE olarak belirledigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder, 
-- diger kayitlarda duplicate hatasi verir.

INSERT INTO fen_lisesi VALUES (101,'Mertkan Serefoglu', 4.3, 'Hatay','2023-09-06');
INSERT INTO fen_lisesi VALUES (102,'Arif Emre Comert', 4.5, 'Nigde','2023-09-06');
INSERT INTO fen_lisesi VALUES (103,'Resul Acar', 4.3, 'Istanbul','2023-09-06');
INSERT INTO fen_lisesi VALUES (104,'Gulay Yilmaz', 4.8, 'Ankara','2023-09-06');
INSERT INTO fen_lisesi VALUES (105,'Hilal Ciftci', 4.9, 'Hatay','2023-09-06');
INSERT INTO fen_lisesi VALUES (106,'Gülsah Ozkan', 5.0, 'Leeds','2023-09-06');
INSERT INTO fen_lisesi VALUES (107,'Yusuf Ihsan Eser', 3.2, 'Istanbul','2023-09-06');
INSERT INTO fen_lisesi VALUES (108, null, 3.2, 'Istanbul','2023-09-06'); -- isim degeri null oldugu icin kaydetmez
INSERT INTO fen_lisesi VALUES (108, 'Mehmet Kara', 2.8, null,'2023-09-06');
INSERT INTO fen_lisesi VALUES (109, 'Halil Gunes', null, 'Kahramanmaras','2023-09-06');
INSERT INTO fen_lisesi VALUES (null, 'Samet Ari', 4.9, 'Ankara','2023-09-06');
INSERT INTO fen_lisesi VALUES (null, 'Kerem Ata', 4.5, 'Malatya','2023-09-06');

/* ----------------------------------------------
Q1 : okul_no , isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak.
------------------------------------------------- */

CREATE TABLE anadolu_lisesi(
okul_no CHAR(4) UNIQUE,
isim VARCHAR(25) NOT NULL,
adres VARCHAR(100),
derece DOUBLE
);

SELECT * FROM anadolu_lisesi;
;
INSERT INTO anadolu_lisesi VALUES ('1001','Esat Fatih','Ankara',4.7);
INSERT INTO anadolu_lisesi VALUES ('1002','Yusuf Rahman','Ankara',4.8);
INSERT INTO anadolu_lisesi VALUES ('1003','Sevda Bagci','Istanbul',3.5);
INSERT INTO anadolu_lisesi VALUES ('1004','Muhammet Ozyon','Ankara',4.3);
INSERT INTO anadolu_lisesi VALUES ('1005','Saida Aliyeva','Ankara',4.1);
INSERT INTO anadolu_lisesi VALUES ('','Mustafa Anar','Erzurum',4.6);
INSERT INTO anadolu_lisesi VALUES ('','Bugra Kagan','Kayseri',4.6); -- bunu kaydetmez Duplicate hatasi verir
INSERT INTO anadolu_lisesi (okul_no, isim) VALUES ('107','Bugra Kagan');
INSERT INTO anadolu_lisesi (isim, derece, okul_no) VALUES ('Tugba Akgun',4.7,'108');


