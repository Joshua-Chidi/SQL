create database test;
use test;
Create Table Customer(
              CUSTOMER_ID  INT AUTO_INCREMENT PRIMARY KEY,
              FIRST_NAME   VARCHAR(50) NOT NULL,
              LAST_NAME    VARCHAR(50) NOT NULL,
              CITY         VARCHAR(50) NOT NULL,
              COUNTRY      VARCHAR(50) NOT NULL
);
ALTER TABLE CUSTOMER ADD COLUMN PHONE VARCHAR(50) NOT NULL;
create table Supplier(
              SUPPLIER_ID  INT AUTO_INCREMENT PRIMARY KEY,
			  COMPANY_NAME VARCHAR(100) NOT NULL,
              CONTACT_NAME VARCHAR(100) NOT NULL,
              CITY         VARCHAR(50) NOT NULL,
              COUNTRY      VARCHAR(50) NOT NULL,
              PHONE        VARCHAR(50) NOT NULL,
              FAX          VARCHAR(50) NOT NULL
);
Create Table Product(
              PRODUCT_ID    INT AUTO_INCREMENT PRIMARY KEY,
              PRODUCT_NAME  VARCHAR(100) NOT NULL,
              SUPPLIER_ID   INT, FOREIGN KEY (SUPPLIER_ID) REFERENCES Supplier(Supplier_ID),
              UNIT_PRICE    Decimal (10,2)
);
ALTER TABLE PRODUCT ADD COLUMN IS_DISCONTINUED VARCHAR(50) NOT NULL;
ALTER TABLE PRODUCT ADD COLUMN PACKAGE VARCHAR(50) NOT NULL;
CREATE TABLE ORDERS(
	           ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
               ORDER_NAME VARCHAR(50) NOT NULL,
               ORDER_TIME TIMESTAMP, 
               CUSTOMER_ID INT, FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
               TOTAL_AMOUNT DECIMAL (10,2),
               ORDER_NUMBER VARCHAR(20) NOT NULL
);
ALTER TABLE ORDERS DROP COLUMN ORDER_NAME;
CREATE TABLE ORDER_ITEM(
			  ORDER_ITEM_ID INT AUTO_INCREMENT PRIMARY KEY,
              ORDER_ID INT, FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
              PRODUCT_ID INT, FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID),
              UNITPRICE DECIMAL(10,2),
			  QUANTITY INT
);
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(1,'Maria','Anders','Berlin','Germany','030-0074321');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(2,'Ana','Trujillo','México D.F.','Mexico','(5) 555-4729');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(3,'Antonio','Moreno','México D.F.','Mexico','(5) 555-3932');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(4,'Thomas','Hardy','London','UK','(171) 555-7788');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(5,'Christina','Berglund','Luleå','Sweden','0921-12 34 65');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(6,'Hanna','Moos','Mannheim','Germany','0621-08460');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(7,'Frédérique','Citeaux','Strasbourg','France','88.60.15.31');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(8,'Martín','Sommer','Madrid','Spain','(91) 555 22 82');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(9,'Laurence','Lebihan','Marseille','France','91.24.45.40');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(10,'Elizabeth','Lincoln','Tsawassen','Canada','(604) 555-4729');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(11,'Victoria','Ashworth','London','UK','(171) 555-1212');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(12,'Patricio','Simpson','Buenos Aires','Argentina','(1) 135-5555');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(13,'Francisco','Chang','México D.F.','Mexico','(5) 555-3392');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(14,'Yang','Wang','Bern','Switzerland','0452-076545');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(15,'Pedro','Afonso','Sao Paulo','Brazil','(11) 555-7647');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(16,'Elizabeth','Brown','London','UK','(171) 555-2282');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(17,'Sven','Ottlieb','Aachen','Germany','0241-039123');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(18,'Janine','Labrune','Nantes','France','40.67.88.88');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(19,'Ann','Devon','London','UK','(171) 555-0297');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(20,'Roland','Mendel','Graz','Austria','7675-3425');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(21,'Aria','Cruz','Sao Paulo','Brazil','(11) 555-9857');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(22,'Diego','Roel','Madrid','Spain','(91) 555 94 44');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(23,'Martine','Rancé','Lille','France','20.16.10.16');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(24,'Maria','Larsson','Bräcke','Sweden','0695-34 67 21');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(25,'Peter','Franken','München','Germany','089-0877310');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(26,'Carine','Schmitt','Nantes','France','40.32.21.21');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(27,'Paolo','Accorti','Torino','Italy','011-4988260');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(28,'Lino','Rodriguez','Lisboa','Portugal','(1) 354-2534');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(29,'Eduardo','Saavedra','Barcelona','Spain','(93) 203 4560');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(30,'José','Pedro Freyre','Sevilla','Spain','(95) 555 82 82');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(31,'André','Fonseca','Campinas','Brazil','(11) 555-9482');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(32,'Howard','Snyder','Eugene','USA','(503) 555-7555');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(33,'Manuel','Pereira','Caracas','Venezuela','(2) 283-2951');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(34,'Mario','Pontes','Rio de Janeiro','Brazil','(21) 555-0091');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(35,'Carlos','Hernández','San Cristóbal','Venezuela','(5) 555-1340');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(36,'Yoshi','Latimer','Elgin','USA','(503) 555-6874');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(37,'Patricia','McKenna','Cork','Ireland','2967 542');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(38,'Helen','Bennett','Cowes','UK','(198) 555-8888');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(39,'Philip','Cramer','Brandenburg','Germany','0555-09876');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(40,'Daniel','Tonini','Versailles','France','30.59.84.10');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(41,'Annette','Roulet','Toulouse','France','61.77.61.10');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(42,'Yoshi','Tannamuri','Vancouver','Canada','(604) 555-3392');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(43,'John','Steel','Walla Walla','USA','(509) 555-7969');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(44,'Renate','Messner','Frankfurt a.M.','Germany','069-0245984');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(45,'Jaime','Yorres','San Francisco','USA','(415) 555-5938');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(46,'Carlos','González','Barquisimeto','Venezuela','(9) 331-6954');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(47,'Felipe','Izquierdo','I. de Margarita','Venezuela','(8) 34-56-12');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(48,'Fran','Wilson','Portland','USA','(503) 555-9573');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(49,'Giovanni','Rovelli','Bergamo','Italy','035-640230');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(50,'Catherine','Dewey','Bruxelles','Belgium','(02) 201 24 67');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(51,'Jean','Fresnière','Montréal','Canada','(514) 555-8054');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(52,'Alexander','Feuer','Leipzig','Germany','0342-023176');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(53,'Simon','Crowther','London','UK','(171) 555-7733');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(54,'Yvonne','Moncada','Buenos Aires','Argentina','(1) 135-5333');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(55,'Rene','Phillips','Anchorage','USA','(907) 555-7584');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(56,'Henriette','Pfalzheim','Köln','Germany','0221-0644327');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(57,'Marie','Bertrand','Paris','France','(1) 42.34.22.66');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(58,'Guillermo','Fernández','México D.F.','Mexico','(5) 552-3745');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(59,'Georg','Pipps','Salzburg','Austria','6562-9722');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(60,'Isabel','de Castro','Lisboa','Portugal','(1) 356-5634');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(61,'Bernardo','Batista','Rio de Janeiro','Brazil','(21) 555-4252');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(62,'Lúcia','Carvalho','Sao Paulo','Brazil','(11) 555-1189');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(63,'Horst','Kloss','Cunewalde','Germany','0372-035188');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(64,'Sergio','Gutiérrez','Buenos Aires','Argentina','(1) 123-5555');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(65,'Paula','Wilson','Albuquerque','USA','(505) 555-5939');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(66,'Maurizio','Moroni','Reggio Emilia','Italy','0522-556721');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(67,'Janete','Limeira','Rio de Janeiro','Brazil','(21) 555-3412');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(68,'Michael','Holz','Genève','Switzerland','0897-034214');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(69,'Alejandra','Camino','Madrid','Spain','(91) 745 6200');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(70,'Jonas','Bergulfsen','Stavern','Norway','07-98 92 35');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(71,'Jose','Pavarotti','Boise','USA','(208) 555-8097');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(72,'Hari','Kumar','London','UK','(171) 555-1717');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(73,'Jytte','Petersen','Kobenhavn','Denmark','31 12 34 56');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(74,'Dominique','Perrier','Paris','France','(1) 47.55.60.10');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(75,'Art','Braunschweiger','Lander','USA','(307) 555-4680');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(76,'Pascale','Cartrain','Charleroi','Belgium','(071) 23 67 22 20');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(77,'Liz','Nixon','Portland','USA','(503) 555-3612');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(78,'Liu','Wong','Butte','USA','(406) 555-5834');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(79,'Karin','Josephs','Münster','Germany','0251-031259');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(80,'Miguel','Angel Paolino','México D.F.','Mexico','(5) 555-2933');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(81,'Anabela','Domingues','Sao Paulo','Brazil','(11) 555-2167');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(82,'Helvetius','Nagy','Kirkland','USA','(206) 555-8257');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(83,'Palle','Ibsen','Århus','Denmark','86 21 32 43');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(84,'Mary','Saveley','Lyon','France','78.32.54.86');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(85,'Paul','Henriot','Reims','France','26.47.15.10');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(86,'Rita','Müller','Stuttgart','Germany','0711-020361');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(87,'Pirkko','Koskitalo','Oulu','Finland','981-443655');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(88,'Paula','Parente','Resende','Brazil','(14) 555-8122');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(89,'Karl','Jablonski','Seattle','USA','(206) 555-4112');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(90,'Matti','Karttunen','Helsinki','Finland','90-224 8858');
INSERT INTO Customer (CUSTOMER_ID,first_name,last_name,City,Country,Phone) VALUES(91,'Zbyszek','Piestrzeniewicz','Warszawa','Poland','(26) 642-7012');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(1,'Exotic Liquids','Charlotte Cooper','London','UK','(171) 555-2222','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(2,'New Orleans Cajun Delights','Shelley Burke','New Orleans','USA','(100) 555-4822','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Ann Arbor','USA','(313) 555-5735','(313) 555-3349');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(4,'Tokyo Traders','Yoshi Nagase','Tokyo','Japan','(03) 3555-5011','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Oviedo','Spain','(98) 598 76 54','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(6,'Mayumi''s','Mayumi Ohno','Osaka','Japan','(06) 431-7877','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(7,'Pavlova, Ltd.','Ian Devling','Melbourne','Australia','(03) 444-2343','(03) 444-6588');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(8,'Specialty Biscuits, Ltd.','Peter Wilson','Manchester','UK','(161) 555-4448','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(9,'PB Knäckebröd AB','Lars Peterson','Göteborg','Sweden','031-987 65 43','031-987 65 91');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(10,'Refrescos Americanas LTDA','Carlos Diaz','Sao Paulo','Brazil','(11) 555 4640','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Berlin','Germany','(010) 9984510','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Frankfurt','Germany','(069) 992755','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Cuxhaven','Germany','(04721) 8713','(04721) 8714');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(14,'Formaggi Fortini s.r.l.','Elio Rossi','Ravenna','Italy','(0544) 60323','(0544) 60603');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(15,'Norske Meierier','Beate Vileid','Sandvika','Norway','(0)2-953010','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(16,'Bigfoot Breweries','Cheryl Saylor','Bend','USA','(503) 555-9931','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(17,'Svensk Sjöföda AB','Michael Björn','Stockholm','Sweden','08-123 45 67','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(18,'Aux joyeux ecclésiastiques','Guylène Nodier','Paris','France','(1) 03.83.00.68','(1) 03.83.00.62');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(19,'New England Seafood Cannery','Robb Merchant','Boston','USA','(617) 555-3267','(617) 555-3389');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(20,'Leka Trading','Chandra Leka','Singapore','Singapore','555-8787','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(21,'Lyngbysild','Niels Petersen','Lyngby','Denmark','43844108','43844115');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(22,'Zaanse Snoepfabriek','Dirk Luchte','Zaandam','Netherlands','(12345) 1212','(12345) 1210');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(23,'Karkki Oy','Anne Heikkonen','Lappeenranta','Finland','(953) 10956','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(24,'G''day, Mate','Wendy Mackenzie','Sydney','Australia','(02) 555-5914','(02) 555-4873');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(25,'Ma Maison','Jean-Guy Lauzon','Montréal','Canada','(514) 555-9022','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Salerno','Italy','(089) 6547665','(089) 6547667');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(27,'Escargots Nouveaux','Marie Delamare','Montceau','France','85.57.00.07','NULL');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(28,'Gai pâturage','Eliane Noz','Annecy','France','38.76.98.06','38.76.98.58');
INSERT INTO Supplier ( Supplier_Id, Company_name, contact_name, city, country, phone, fax) VALUES(29,'Forêts d''érables','Chantal Goulet','Ste-Hyacinthe','Canada','(514) 555-2955','(514) 555-2921');
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(1,'Chai',1,18.00,'10 boxes x 20 bags',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(2,'Chang',1,19.00,'24 - 12 oz bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(3,'Aniseed Syrup',1,10.00,'12 - 550 ml bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(4,'Chef Anton''s Cajun Seasoning',2,22.00,'48 - 6 oz jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(5,'Chef Anton''s Gumbo Mix',2,21.35,'36 boxes',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(6,'Grandma''s Boysenberry Spread',3,25.00,'12 - 8 oz jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(7,'Uncle Bob''s Organic Dried Pears',3,30.00,'12 - 1 lb pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(8,'Northwoods Cranberry Sauce',3,40.00,'12 - 12 oz jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(9,'Mishi Kobe Niku',4,97.00,'18 - 500 g pkgs.',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(10,'Ikura',4,31.00,'12 - 200 ml jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(11,'Queso Cabrales',5,21.00,'1 kg pkg.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(12,'Queso Manchego La Pastora',5,38.00,'10 - 500 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(13,'Konbu',6,6.00,'2 kg box',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(14,'Tofu',6,23.25,'40 - 100 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(15,'Genen Shouyu',6,15.50,'24 - 250 ml bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(16,'Pavlova',7,17.45,'32 - 500 g boxes',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(17,'Alice Mutton',7,39.00,'20 - 1 kg tins',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(18,'Carnarvon Tigers',7,62.50,'16 kg pkg.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(19,'Teatime Chocolate Biscuits',8,9.20,'10 boxes x 12 pieces',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(20,'Sir Rodney''s Marmalade',8,81.00,'30 gift boxes',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(21,'Sir Rodney''s Scones',8,10.00,'24 pkgs. x 4 pieces',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(22,'Gustaf''s Knäckebröd',9,21.00,'24 - 500 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(23,'Tunnbröd',9,9.00,'12 - 250 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(24,'Guaraná Fantástica',10,4.50,'12 - 355 ml cans',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(25,'NuNuCa Nuß-Nougat-Creme',11,14.00,'20 - 450 g glasses',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(26,'Gumbär Gummibärchen',11,31.23,'100 - 250 g bags',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(27,'Schoggi Schokolade',11,43.90,'100 - 100 g pieces',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(28,'Rössle Sauerkraut',12,45.60,'25 - 825 g cans',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(29,'Thüringer Rostbratwurst',12,123.79,'50 bags x 30 sausgs.',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(30,'Nord-Ost Matjeshering',13,25.89,'10 - 200 g glasses',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(31,'Gorgonzola Telino',14,12.50,'12 - 100 g pkgs',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(32,'Mascarpone Fabioli',14,32.00,'24 - 200 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(33,'Geitost',15,2.50,'500 g',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(34,'Sasquatch Ale',16,14.00,'24 - 12 oz bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(35,'Steeleye Stout',16,18.00,'24 - 12 oz bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(36,'Inlagd Sill',17,19.00,'24 - 250 g  jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(37,'Gravad lax',17,26.00,'12 - 500 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(38,'Côte de Blaye',18,263.50,'12 - 75 cl bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(39,'Chartreuse verte',18,18.00,'750 cc per bottle',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(40,'Boston Crab Meat',19,18.40,'24 - 4 oz tins',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(41,'Jack''s New England Clam Chowder',19,9.65,'12 - 12 oz cans',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(42,'Singaporean Hokkien Fried Mee',20,14.00,'32 - 1 kg pkgs.',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(43,'Ipoh Coffee',20,46.00,'16 - 500 g tins',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(44,'Gula Malacca',20,19.45,'20 - 2 kg bags',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(45,'Rogede sild',21,9.50,'1k pkg.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(46,'Spegesild',21,12.00,'4 - 450 g glasses',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(47,'Zaanse koeken',22,9.50,'10 - 4 oz boxes',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(48,'Chocolade',22,12.75,'10 pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(49,'Maxilaku',23,20.00,'24 - 50 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(50,'Valkoinen suklaa',23,16.25,'12 - 100 g bars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(51,'Manjimup Dried Apples',24,53.00,'50 - 300 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(52,'Filo Mix',24,7.00,'16 - 2 kg boxes',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(53,'Perth Pasties',24,32.80,'48 pieces',1);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(54,'Tourtière',25,7.45,'16 pies',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(55,'Pâté chinois',25,24.00,'24 boxes x 2 pies',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(56,'Gnocchi di nonna Alice',26,38.00,'24 - 250 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(57,'Ravioli Angelo',26,19.50,'24 - 250 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(58,'Escargots de Bourgogne',27,13.25,'24 pieces',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(59,'Raclette Courdavault',28,55.00,'5 kg pkg.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(60,'Camembert Pierrot',28,34.00,'15 - 300 g rounds',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(61,'Sirop d''érable',29,28.50,'24 - 500 ml bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(62,'Tarte au sucre',29,49.30,'48 pies',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(63,'Vegie-spread',7,43.90,'15 - 625 g jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(64,'Wimmers gute Semmelknödel',12,33.25,'20 bags x 4 pieces',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(65,'Louisiana Fiery Hot Pepper Sauce',2,21.05,'32 - 8 oz bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(66,'Louisiana Hot Spiced Okra',2,17.00,'24 - 8 oz jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(67,'Laughing Lumberjack Lager',16,14.00,'24 - 12 oz bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(68,'Scottish Longbreads',8,12.50,'10 boxes x 8 pieces',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(69,'Gudbrandsdalsost',15,36.00,'10 kg pkg.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(70,'Outback Lager',7,15.00,'24 - 355 ml bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(71,'Flotemysost',15,21.50,'10 - 500 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(72,'Mozzarella di Giovanni',14,34.80,'24 - 200 g pkgs.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(73,'Röd Kaviar',17,15.00,'24 - 150 g jars',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(74,'Longlife Tofu',4,10.00,'5 kg pkg.',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(75,'Rhönbräu Klosterbier',12,7.75,'24 - 0.5 l bottles',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(76,'Lakkalikööri',23,18.00,'500 ml',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(77,'Original Frankfurter grüne Soße',12,13.00,'12 boxes',0);
INSERT INTO Product (product_id,Product_Name,Supplier_ID,Unit_Price,Package,Is_Discontinued) VALUES(78,'Stroopwafels',22,9.75,'24 pieces',0);
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(1,'2012-07-04 00:00:00',85,440.00,'542378'),
(2,'2012-07-05 00:00:00',79,1863.40,'542379'),
(3,'2012-07-08 00:00:00',34,1813.00,'542380'),
(4,'2012-07-08 00:00:00',84,670.80,'542381'),
(5,'2012-07-09 00:00:00',76,3730.00,'542382'),
(6,'2012-07-10 00:00:00',34,1444.80,'542383'),
(7,'2012-07-11 00:00:00',14,625.20,'542384'),
(8,'2012-07-12 00:00:00',68,2490.50,'542385'),
(9,'2012-07-15 00:00:00',88,517.80,'542386'),
(10,'2012-07-16 00:00:00',35,1119.90,'542387'),
(11,'2012-07-17 00:00:00',20,2018.60,'542388'),
(12,'2012-07-18 00:00:00',13,100.80,'542389'),
(13,'2012-07-19 00:00:00',56,1746.20,'542390'),
(14,'2012-07-19 00:00:00',61,448.00,'542391'),
(15,'2012-07-22 00:00:00',65,624.80,'542392'),
(16,'2012-07-23 00:00:00',20,2464.80,'542393'),
(17,'2012-07-24 00:00:00',24,724.50,'542394'),
(18,'2012-07-25 00:00:00',7,1176.00,'542395'),
(19,'2012-07-26 00:00:00',87,364.80,'542396'),
(20,'2012-07-29 00:00:00',25,4031.00,'542397'),
(21,'2012-07-30 00:00:00',33,1101.20,'542398'),
(22,'2012-07-31 00:00:00',89,676.00,'542399'),
(23,'2012-08-01 00:00:00',87,1376.00,'542400'),
(24,'2012-08-01 00:00:00',75,48.00,'542401'),
(25,'2012-08-02 00:00:00',65,1456.00,'542402'),
(26,'2012-08-05 00:00:00',63,2142.40,'542403'),
(27,'2012-08-06 00:00:00',85,538.60,'542404'),
(28,'2012-08-07 00:00:00',49,307.20,'542405'),
(29,'2012-08-08 00:00:00',80,420.00,'542406'),
(30,'2012-08-09 00:00:00',52,1200.80,'542407'),
(31,'2012-08-12 00:00:00',5,1488.80,'542408'),
(32,'2012-08-13 00:00:00',44,468.00,'542409'),
(33,'2012-08-14 00:00:00',5,613.20,'542410'),
(34,'2012-08-14 00:00:00',69,86.50,'542411'),
(35,'2012-08-15 00:00:00',69,155.40,'542412'),
(36,'2012-08-16 00:00:00',46,1414.80,'542413'),
(37,'2012-08-19 00:00:00',44,1452.00,'542414'),
(38,'2012-08-20 00:00:00',63,2179.20,'542415'),
(39,'2012-08-21 00:00:00',63,3016.00,'542416'),
(40,'2012-08-22 00:00:00',67,924.00,'542417'),
(41,'2012-08-23 00:00:00',66,89.00,'542418'),
(42,'2012-08-26 00:00:00',11,479.40,'542419'),
(43,'2012-08-27 00:00:00',15,2169.00,'542420'),
(44,'2012-08-27 00:00:00',61,552.80,'542421'),
(45,'2012-08-28 00:00:00',81,1296.00,'542422'),
(46,'2012-08-29 00:00:00',80,848.70,'542423'),
(47,'2012-08-30 00:00:00',65,1887.60,'542424'),
(48,'2012-09-02 00:00:00',85,121.60,'542425'),
(49,'2012-09-03 00:00:00',46,1050.60,'542426'),
(50,'2012-09-04 00:00:00',7,1420.00,'542427'),
(51,'2012-09-05 00:00:00',37,3127.00,'542428'),
(52,'2012-09-06 00:00:00',67,349.50,'542429'),
(53,'2012-09-09 00:00:00',49,608.00,'542430'),
(54,'2012-09-09 00:00:00',86,755.00,'542431'),
(55,'2012-09-10 00:00:00',76,2708.80,'542432'),
(56,'2012-09-11 00:00:00',30,1242.00,'542433'),
(57,'2012-09-12 00:00:00',80,954.40,'542434'),
(58,'2012-09-13 00:00:00',55,4157.00,'542435'),
(59,'2012-09-16 00:00:00',69,498.50,'542436'),
(60,'2012-09-17 00:00:00',48,424.00,'542437'),
(61,'2012-09-18 00:00:00',2,88.80,'542438'),
(62,'2012-09-19 00:00:00',37,1762.00,'542439'),
(63,'2012-09-20 00:00:00',77,336.00,'542440'),
(64,'2012-09-20 00:00:00',18,268.80,'542441'),
(65,'2012-09-23 00:00:00',86,1614.80,'542442'),
(66,'2012-09-24 00:00:00',63,182.40,'542443'),
(67,'2012-09-25 00:00:00',65,2327.00,'542444'),
(68,'2012-09-26 00:00:00',38,516.80,'542445'),
(69,'2012-09-27 00:00:00',65,2835.00,'542446'),
(70,'2012-09-30 00:00:00',48,288.00,'542447');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(71,'2012-10-01 00:00:00',38,240.40,'542448'),
(72,'2012-10-02 00:00:00',80,1191.20,'542449'),
(73,'2012-10-03 00:00:00',87,516.00,'542450'),
(74,'2012-10-03 00:00:00',38,144.00,'542451'),
(75,'2012-10-04 00:00:00',58,112.00,'542452'),
(76,'2012-10-07 00:00:00',39,164.40,'542453'),
(77,'2012-10-08 00:00:00',71,6155.90,'542454'),
(78,'2012-10-09 00:00:00',39,1497.00,'542455'),
(79,'2012-10-10 00:00:00',8,982.00,'542456'),
(80,'2012-10-11 00:00:00',24,2262.50,'542457'),
(81,'2012-10-14 00:00:00',28,1168.00,'542458'),
(82,'2012-10-15 00:00:00',75,4819.40,'542459'),
(83,'2012-10-16 00:00:00',46,1940.00,'542460'),
(84,'2012-10-16 00:00:00',9,88.50,'542461'),
(85,'2012-10-17 00:00:00',51,2233.60,'542462'),
(86,'2012-10-18 00:00:00',87,954.00,'542463'),
(87,'2012-10-21 00:00:00',84,144.80,'542464'),
(88,'2012-10-22 00:00:00',37,2545.20,'542465'),
(89,'2012-10-23 00:00:00',60,316.80,'542466'),
(90,'2012-10-24 00:00:00',25,2467.00,'542467'),
(91,'2012-10-25 00:00:00',55,934.50,'542468'),
(92,'2012-10-28 00:00:00',51,3463.20,'542469'),
(93,'2012-10-29 00:00:00',9,2564.40,'542470'),
(94,'2012-10-29 00:00:00',73,412.00,'542471'),
(95,'2012-10-30 00:00:00',25,2300.80,'542472'),
(96,'2012-10-31 00:00:00',44,1586.00,'542473'),
(97,'2012-11-01 00:00:00',89,2856.00,'542474'),
(98,'2012-11-04 00:00:00',63,2924.80,'542475'),
(99,'2012-11-05 00:00:00',65,1731.20,'542476'),
(100,'2012-11-06 00:00:00',21,928.00,'542477'),
(101,'2012-11-07 00:00:00',86,396.00,'542478'),
(102,'2012-11-08 00:00:00',75,141.60,'542479'),
(103,'2012-11-11 00:00:00',41,713.40,'542480'),
(104,'2012-11-11 00:00:00',20,5677.60,'542481'),
(105,'2012-11-12 00:00:00',28,154.00,'542482'),
(106,'2012-11-13 00:00:00',59,10741.60,'542483'),
(107,'2012-11-14 00:00:00',58,568.80,'542484'),
(108,'2012-11-15 00:00:00',4,480.00,'542485'),
(109,'2012-11-18 00:00:00',86,1106.40,'542486'),
(110,'2012-11-19 00:00:00',46,1360.00,'542487'),
(111,'2012-11-20 00:00:00',41,452.00,'542488'),
(112,'2012-11-21 00:00:00',72,3654.40,'542489'),
(113,'2012-11-22 00:00:00',7,7390.20,'542490'),
(114,'2012-11-22 00:00:00',63,2273.60,'542491'),
(115,'2012-11-25 00:00:00',9,1549.60,'542492'),
(116,'2012-11-26 00:00:00',17,447.20,'542493'),
(117,'2012-11-26 00:00:00',19,950.00,'542494'),
(118,'2012-11-27 00:00:00',3,403.20,'542495'),
(119,'2012-11-28 00:00:00',29,136.00,'542496'),
(120,'2012-11-28 00:00:00',83,834.20,'542497'),
(121,'2012-11-29 00:00:00',20,1834.20,'542498'),
(122,'2012-12-02 00:00:00',75,2527.20,'542499'),
(123,'2012-12-03 00:00:00',14,1174.00,'542500'),
(124,'2012-12-03 00:00:00',41,91.20,'542501'),
(125,'2012-12-04 00:00:00',62,12281.20,'542502'),
(126,'2012-12-05 00:00:00',37,1708.00,'542503'),
(127,'2012-12-05 00:00:00',91,459.00,'542504'),
(128,'2012-12-06 00:00:00',36,338.00,'542505'),
(129,'2012-12-09 00:00:00',51,420.00,'542506'),
(130,'2012-12-09 00:00:00',72,1016.00,'542507'),
(131,'2012-12-10 00:00:00',24,103.20,'542508'),
(132,'2012-12-11 00:00:00',61,959.20,'542509'),
(133,'2012-12-12 00:00:00',37,1419.80,'542510'),
(134,'2012-12-12 00:00:00',46,112.00,'542511'),
(135,'2012-12-13 00:00:00',20,2900.00,'542512'),
(136,'2012-12-16 00:00:00',4,899.00,'542513'),
(137,'2012-12-16 00:00:00',5,2222.40,'542514'),
(138,'2012-12-17 00:00:00',75,864.00,'542515'),
(139,'2012-12-18 00:00:00',21,166.00,'542516'),
(140,'2012-12-18 00:00:00',70,1058.40,'542517');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(141,'2012-12-19 00:00:00',72,1274.00,'542518'),
(142,'2012-12-20 00:00:00',10,1832.80,'542519'),
(143,'2012-12-23 00:00:00',20,2275.20,'542520'),
(144,'2012-12-23 00:00:00',17,86.40,'542521'),
(145,'2012-12-24 00:00:00',59,1440.00,'542522'),
(146,'2012-12-25 00:00:00',71,3302.60,'542523'),
(147,'2012-12-25 00:00:00',36,442.00,'542524'),
(148,'2012-12-26 00:00:00',35,2333.20,'542525'),
(149,'2012-12-27 00:00:00',25,1903.80,'542526'),
(150,'2012-12-27 00:00:00',60,843.20,'542527'),
(151,'2012-12-30 00:00:00',71,2736.00,'542528'),
(152,'2012-12-31 00:00:00',83,1765.60,'542529'),
(153,'2013-01-01 00:00:00',19,3063.00,'542530'),
(154,'2013-01-01 00:00:00',65,3868.60,'542531'),
(155,'2013-01-02 00:00:00',20,2713.50,'542532'),
(156,'2013-01-03 00:00:00',20,1005.90,'542533'),
(157,'2013-01-03 00:00:00',49,1675.00,'542534'),
(158,'2013-01-06 00:00:00',47,400.00,'542535'),
(159,'2013-01-07 00:00:00',62,2018.20,'542536'),
(160,'2013-01-07 00:00:00',56,1194.00,'542537'),
(161,'2013-01-08 00:00:00',23,1622.40,'542538'),
(162,'2013-01-09 00:00:00',54,319.20,'542539'),
(163,'2013-01-10 00:00:00',10,802.00,'542540'),
(164,'2013-01-10 00:00:00',10,1208.50,'542541'),
(165,'2013-01-13 00:00:00',87,372.00,'542542'),
(166,'2013-01-14 00:00:00',41,2123.20,'542543'),
(167,'2013-01-14 00:00:00',21,231.40,'542544'),
(168,'2013-01-15 00:00:00',36,102.40,'542545'),
(169,'2013-01-16 00:00:00',87,720.00,'542546'),
(170,'2013-01-16 00:00:00',73,11283.20,'542547'),
(171,'2013-01-17 00:00:00',63,1814.80,'542548'),
(172,'2013-01-20 00:00:00',68,2208.00,'542549'),
(173,'2013-01-21 00:00:00',88,1897.60,'542550'),
(174,'2013-01-21 00:00:00',61,1273.20,'542551'),
(175,'2013-01-22 00:00:00',27,49.80,'542552'),
(176,'2013-01-23 00:00:00',31,1020.00,'542553'),
(177,'2013-01-23 00:00:00',51,11493.20,'542554'),
(178,'2013-01-24 00:00:00',41,480.00,'542555'),
(179,'2013-01-27 00:00:00',29,338.20,'542556'),
(180,'2013-01-27 00:00:00',59,651.00,'542557'),
(181,'2013-01-28 00:00:00',66,192.00,'542558'),
(182,'2013-01-29 00:00:00',37,1748.50,'542559'),
(183,'2013-01-30 00:00:00',20,5796.00,'542560'),
(184,'2013-01-30 00:00:00',10,2523.00,'542561'),
(185,'2013-01-31 00:00:00',75,485.00,'542562'),
(186,'2013-02-03 00:00:00',60,851.20,'542563'),
(187,'2013-02-03 00:00:00',24,360.00,'542564'),
(188,'2013-02-04 00:00:00',16,631.60,'542565'),
(189,'2013-02-05 00:00:00',7,2210.80,'542566'),
(190,'2013-02-05 00:00:00',87,393.00,'542567'),
(191,'2013-02-06 00:00:00',79,567.50,'542568'),
(192,'2013-02-07 00:00:00',51,1078.00,'542569'),
(193,'2013-02-10 00:00:00',71,5793.10,'542570'),
(194,'2013-02-10 00:00:00',55,1755.00,'542571'),
(195,'2013-02-11 00:00:00',20,1792.00,'542572'),
(196,'2013-02-12 00:00:00',66,537.60,'542573'),
(197,'2013-02-12 00:00:00',5,1031.70,'542574'),
(198,'2013-02-13 00:00:00',5,174.90,'542575'),
(199,'2013-02-14 00:00:00',79,273.60,'542576'),
(200,'2013-02-14 00:00:00',67,914.40,'542577'),
(201,'2013-02-17 00:00:00',64,443.40,'542578'),
(202,'2013-02-18 00:00:00',7,1838.20,'542579'),
(203,'2013-02-19 00:00:00',84,531.40,'542580'),
(204,'2013-02-19 00:00:00',63,4277.40,'542581'),
(205,'2013-02-20 00:00:00',71,2096.00,'542582'),
(206,'2013-02-21 00:00:00',4,453.00,'542583'),
(207,'2013-02-21 00:00:00',41,414.00,'542584'),
(208,'2013-02-24 00:00:00',87,2684.00,'542585'),
(209,'2013-02-25 00:00:00',39,656.00,'542586'),
(210,'2013-02-25 00:00:00',39,1584.00,'542587');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(211,'2013-02-26 00:00:00',48,424.00,'542588'),
(212,'2013-02-26 00:00:00',48,848.00,'542589'),
(213,'2013-02-27 00:00:00',63,1274.00,'542590'),
(214,'2013-02-27 00:00:00',63,268.80,'542591'),
(215,'2013-02-28 00:00:00',20,1614.80,'542592'),
(216,'2013-03-01 00:00:00',63,182.40,'542593'),
(217,'2013-03-01 00:00:00',65,2327.00,'542594'),
(218,'2013-03-04 00:00:00',38,516.80,'542595'),
(219,'2013-03-04 00:00:00',65,2835.00,'542596'),
(220,'2013-03-05 00:00:00',48,288.00,'542597'),
(221,'2013-03-06 00:00:00',38,240.40,'542598'),
(222,'2013-03-06 00:00:00',80,1191.20,'542599'),
(223,'2013-03-07 00:00:00',87,516.00,'542600'),
(224,'2013-03-07 00:00:00',38,144.00,'542601'),
(225,'2013-03-08 00:00:00',58,112.00,'542602'),
(226,'2013-03-11 00:00:00',39,164.40,'542603'),
(227,'2013-03-11 00:00:00',71,6155.90,'542604'),
(228,'2013-03-12 00:00:00',39,1497.00,'542605'),
(229,'2013-03-13 00:00:00',8,982.00,'542606'),
(230,'2013-03-13 00:00:00',24,2262.50,'542607'),
(231,'2013-03-14 00:00:00',28,1168.00,'542608'),
(232,'2013-03-14 00:00:00',75,4819.40,'542609'),
(233,'2013-03-17 00:00:00',46,1940.00,'542610'),
(234,'2013-03-17 00:00:00',9,88.50,'542611'),
(235,'2013-03-18 00:00:00',51,2233.60,'542612'),
(236,'2013-03-18 00:00:00',87,954.00,'542613'),
(237,'2013-03-19 00:00:00',84,144.80,'542614'),
(238,'2013-03-20 00:00:00',37,2545.20,'542615'),
(239,'2013-03-20 00:00:00',60,316.80,'542616'),
(240,'2013-03-21 00:00:00',25,2467.00,'542617'),
(241,'2013-03-21 00:00:00',55,934.50,'542618'),
(242,'2013-03-24 00:00:00',51,3463.20,'542619'),
(243,'2013-03-24 00:00:00',9,2564.40,'542620'),
(244,'2013-03-25 00:00:00',73,412.00,'542621'),
(245,'2013-03-25 00:00:00',25,2300.80,'542622'),
(246,'2013-03-26 00:00:00',44,1586.00,'542623'),
(247,'2013-03-26 00:00:00',89,2856.00,'542624'),
(248,'2013-03-27 00:00:00',63,2924.80,'542625'),
(249,'2013-03-27 00:00:00',65,1731.20,'542626'),
(250,'2013-03-28 00:00:00',21,928.00,'542627'),
(251,'2013-03-28 00:00:00',86,396.00,'542628'),
(252,'2013-03-31 00:00:00',75,141.60,'542629'),
(253,'2013-03-31 00:00:00',41,713.40,'542630'),
(254,'2013-04-01 00:00:00',20,5677.60,'542631'),
(255,'2013-04-01 00:00:00',28,154.00,'542632'),
(256,'2013-04-02 00:00:00',59,10741.60,'542633'),
(257,'2013-04-02 00:00:00',58,568.80,'542634'),
(258,'2013-04-03 00:00:00',4,480.00,'542635'),
(259,'2013-04-03 00:00:00',86,1106.40,'542636'),
(260,'2013-04-04 00:00:00',46,1360.00,'542637'),
(261,'2013-04-04 00:00:00',41,452.00,'542638'),
(262,'2013-04-07 00:00:00',72,3654.40,'542639'),
(263,'2013-04-07 00:00:00',7,7390.20,'542640'),
(264,'2013-04-08 00:00:00',63,2273.60,'542641'),
(265,'2013-04-08 00:00:00',9,1549.60,'542642'),
(266,'2013-04-09 00:00:00',17,447.20,'542643'),
(267,'2013-04-09 00:00:00',19,950.00,'542644'),
(268,'2013-04-10 00:00:00',3,403.20,'542645'),
(269,'2013-04-10 00:00:00',29,136.00,'542646'),
(270,'2013-04-11 00:00:00',83,834.20,'542647'),
(271,'2013-04-11 00:00:00',20,1834.20,'542648'),
(272,'2013-04-14 00:00:00',75,2527.20,'542649'),
(273,'2013-04-14 00:00:00',14,1174.00,'542650'),
(274,'2013-04-15 00:00:00',41,91.20,'542651'),
(275,'2013-04-15 00:00:00',62,12281.20,'542652'),
(276,'2013-04-16 00:00:00',37,1708.00,'542653'),
(277,'2013-04-16 00:00:00',91,459.00,'542654'),
(278,'2013-04-17 00:00:00',36,338.00,'542655'),
(279,'2013-04-17 00:00:00',51,420.00,'542656'),
(280,'2013-04-18 00:00:00',72,1016.00,'542657');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(281,'2013-04-18 00:00:00',24,103.20,'542658'),
(282,'2013-04-19 00:00:00',61,959.20,'542659'),
(283,'2013-04-19 00:00:00',37,1419.80,'542660'),
(284,'2013-04-20 00:00:00',46,112.00,'542661'),
(285,'2013-04-21 00:00:00',20,2900.00,'542662'),
(286,'2013-04-21 00:00:00',4,899.00,'542663'),
(287,'2013-04-22 00:00:00',5,2222.40,'542664'),
(288,'2013-04-22 00:00:00',75,864.00,'542665'),
(289,'2013-04-23 00:00:00',21,166.00,'542666'),
(290,'2013-04-23 00:00:00',70,1058.40,'542667'),
(291,'2013-04-24 00:00:00',72,1274.00,'542668'),
(292,'2013-04-24 00:00:00',10,1832.80,'542669'),
(293,'2013-04-25 00:00:00',20,2275.20,'542670'),
(294,'2013-04-25 00:00:00',17,86.40,'542671'),
(295,'2013-04-28 00:00:00',59,1440.00,'542672'),
(296,'2013-04-28 00:00:00',71,3302.60,'542673'),
(297,'2013-04-29 00:00:00',36,442.00,'542674'),
(298,'2013-04-29 00:00:00',35,2333.20,'542675'),
(299,'2013-04-30 00:00:00',25,1903.80,'542676'),
(300,'2013-04-30 00:00:00',60,843.20,'542677'),
(301,'2013-05-01 00:00:00',71,2736.00,'542678'),
(302,'2013-05-01 00:00:00',83,1765.60,'542679'),
(303,'2013-05-02 00:00:00',19,3063.00,'542680'),
(304,'2013-05-02 00:00:00',65,3868.60,'542681'),
(305,'2013-05-05 00:00:00',20,2713.50,'542682'),
(306,'2013-05-05 00:00:00',20,1005.90,'542683'),
(307,'2013-05-06 00:00:00',49,1675.00,'542684'),
(308,'2013-05-06 00:00:00',47,400.00,'542685'),
(309,'2013-05-07 00:00:00',62,2018.20,'542686'),
(310,'2013-05-07 00:00:00',56,1194.00,'542687'),
(311,'2013-05-08 00:00:00',23,1622.40,'542688'),
(312,'2013-05-08 00:00:00',54,319.20,'542689'),
(313,'2013-05-09 00:00:00',10,802.00,'542690'),
(314,'2013-05-09 00:00:00',10,1208.50,'542691'),
(315,'2013-05-12 00:00:00',87,372.00,'542692'),
(316,'2013-05-12 00:00:00',41,2123.20,'542693'),
(317,'2013-05-13 00:00:00',21,231.40,'542694'),
(318,'2013-05-13 00:00:00',36,102.40,'542695'),
(319,'2013-05-14 00:00:00',87,720.00,'542696'),
(320,'2013-05-14 00:00:00',73,11283.20,'542697'),
(321,'2013-05-15 00:00:00',63,1814.80,'542698'),
(322,'2013-05-15 00:00:00',68,2208.00,'542699'),
(323,'2013-05-16 00:00:00',88,1897.60,'542700'),
(324,'2013-05-16 00:00:00',61,1273.20,'542701'),
(325,'2013-05-19 00:00:00',27,49.80,'542702'),
(326,'2013-05-19 00:00:00',31,1020.00,'542703'),
(327,'2013-05-20 00:00:00',51,11493.20,'542704'),
(328,'2013-05-20 00:00:00',41,480.00,'542705'),
(329,'2013-05-21 00:00:00',29,338.20,'542706'),
(330,'2013-05-21 00:00:00',59,651.00,'542707'),
(331,'2013-05-22 00:00:00',66,192.00,'542708'),
(332,'2013-05-22 00:00:00',37,1748.50,'542709'),
(333,'2013-05-23 00:00:00',20,5796.00,'542710'),
(334,'2013-05-23 00:00:00',10,2523.00,'542711'),
(335,'2013-05-26 00:00:00',75,485.00,'542712'),
(336,'2013-05-26 00:00:00',60,851.20,'542713'),
(337,'2013-05-27 00:00:00',24,360.00,'542714'),
(338,'2013-05-27 00:00:00',16,631.60,'542715'),
(339,'2013-05-28 00:00:00',7,2210.80,'542716'),
(340,'2013-05-28 00:00:00',87,393.00,'542717'),
(341,'2013-05-29 00:00:00',79,567.50,'542718'),
(342,'2013-05-29 00:00:00',51,1078.00,'542719'),
(343,'2013-05-30 00:00:00',71,5793.10,'542720'),
(344,'2013-05-30 00:00:00',55,1755.00,'542721'),
(345,'2013-06-02 00:00:00',20,1792.00,'542722'),
(346,'2013-06-02 00:00:00',66,537.60,'542723'),
(347,'2013-06-03 00:00:00',5,1031.70,'542724'),
(348,'2013-06-03 00:00:00',5,174.90,'542725'),
(349,'2013-06-04 00:00:00',79,273.60,'542726'),
(350,'2013-06-04 00:00:00',67,914.40,'542727');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(351,'2013-06-05 00:00:00',64,443.40,'542728'),
(352,'2013-06-05 00:00:00',7,1838.20,'542729'),
(353,'2013-06-06 00:00:00',84,531.40,'542730'),
(354,'2013-06-06 00:00:00',63,4277.40,'542731'),
(355,'2013-06-09 00:00:00',71,2096.00,'542732'),
(356,'2013-06-09 00:00:00',4,453.00,'542733'),
(357,'2013-06-10 00:00:00',41,414.00,'542734'),
(358,'2013-06-10 00:00:00',87,2684.00,'542735'),
(359,'2013-06-11 00:00:00',39,656.00,'542736'),
(360,'2013-06-11 00:00:00',39,1584.00,'542737'),
(361,'2013-06-12 00:00:00',48,424.00,'542738'),
(362,'2013-06-12 00:00:00',48,848.00,'542739'),
(363,'2013-06-13 00:00:00',63,1274.00,'542740'),
(364,'2013-06-13 00:00:00',63,268.80,'542741'),
(365,'2013-06-16 00:00:00',20,1614.80,'542742'),
(366,'2013-06-16 00:00:00',63,182.40,'542743'),
(367,'2013-06-17 00:00:00',65,2327.00,'542744'),
(368,'2013-06-17 00:00:00',38,516.80,'542745'),
(369,'2013-06-18 00:00:00',65,2835.00,'542746'),
(370,'2013-06-18 00:00:00',48,288.00,'542747'),
(371,'2013-06-19 00:00:00',38,240.40,'542748'),
(372,'2013-06-19 00:00:00',80,1191.20,'542749'),
(373,'2013-06-20 00:00:00',87,516.00,'542750'),
(374,'2013-06-20 00:00:00',38,144.00,'542751'),
(375,'2013-06-23 00:00:00',58,112.00,'542752'),
(376,'2013-06-23 00:00:00',39,164.40,'542753'),
(377,'2013-06-24 00:00:00',71,6155.90,'542754'),
(378,'2013-06-24 00:00:00',39,1497.00,'542755'),
(379,'2013-06-25 00:00:00',8,982.00,'542756'),
(380,'2013-06-25 00:00:00',24,2262.50,'542757'),
(381,'2013-06-26 00:00:00',28,1168.00,'542758'),
(382,'2013-06-26 00:00:00',75,4819.40,'542759'),
(383,'2013-06-27 00:00:00',46,1940.00,'542760'),
(384,'2013-06-27 00:00:00',9,88.50,'542761'),
(385,'2013-06-30 00:00:00',51,2233.60,'542762'),
(386,'2013-06-30 00:00:00',87,954.00,'542763'),
(387,'2013-07-01 00:00:00',84,144.80,'542764'),
(388,'2013-07-01 00:00:00',37,2545.20,'542765'),
(389,'2013-07-02 00:00:00',60,316.80,'542766'),
(390,'2013-07-02 00:00:00',25,2467.00,'542767'),
(391,'2013-07-03 00:00:00',55,934.50,'542768'),
(392,'2013-07-03 00:00:00',51,3463.20,'542769'),
(393,'2013-07-04 00:00:00',9,2564.40,'542770'),
(394,'2013-07-04 00:00:00',73,412.00,'542771'),
(395,'2013-07-07 00:00:00',25,2300.80,'542772'),
(396,'2013-07-07 00:00:00',44,1586.00,'542773'),
(397,'2013-07-08 00:00:00',89,2856.00,'542774'),
(398,'2013-07-08 00:00:00',63,2924.80,'542775'),
(399,'2013-07-09 00:00:00',65,1731.20,'542776'),
(400,'2013-07-09 00:00:00',21,928.00,'542777'),
(401,'2013-07-10 00:00:00',86,396.00,'542778'),
(402,'2013-07-10 00:00:00',75,141.60,'542779'),
(403,'2013-07-11 00:00:00',41,713.40,'542780'),
(404,'2013-07-11 00:00:00',20,5677.60,'542781'),
(405,'2013-07-14 00:00:00',28,154.00,'542782'),
(406,'2013-07-14 00:00:00',59,10741.60,'542783'),
(407,'2013-07-15 00:00:00',58,568.80,'542784'),
(408,'2013-07-15 00:00:00',4,480.00,'542785'),
(409,'2013-07-16 00:00:00',86,1106.40,'542786'),
(410,'2013-07-16 00:00:00',46,1360.00,'542787'),
(411,'2013-07-17 00:00:00',41,452.00,'542788'),
(412,'2013-07-17 00:00:00',72,3654.40,'542789'),
(413,'2013-07-18 00:00:00',7,7390.20,'542790'),
(414,'2013-07-18 00:00:00',63,2273.60,'542791'),
(415,'2013-07-21 00:00:00',9,1549.60,'542792'),
(416,'2013-07-21 00:00:00',17,447.20,'542793'),
(417,'2013-07-22 00:00:00',19,950.00,'542794'),
(418,'2013-07-22 00:00:00',3,403.20,'542795'),
(419,'2013-07-23 00:00:00',29,136.00,'542796'),
(420,'2013-07-23 00:00:00',83,834.20,'542797');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(421,'2013-07-24 00:00:00',20,1834.20,'542798'),
(422,'2013-07-24 00:00:00',75,2527.20,'542799'),
(423,'2013-07-25 00:00:00',14,1174.00,'542800'),
(424,'2013-07-25 00:00:00',41,91.20,'542801'),
(425,'2013-07-28 00:00:00',62,12281.20,'542802'),
(426,'2013-07-28 00:00:00',37,1708.00,'542803'),
(427,'2013-07-29 00:00:00',91,459.00,'542804'),
(428,'2013-07-29 00:00:00',36,338.00,'542805'),
(429,'2013-07-30 00:00:00',51,420.00,'542806'),
(430,'2013-07-30 00:00:00',72,1016.00,'542807'),
(431,'2013-07-31 00:00:00',24,103.20,'542808'),
(432,'2013-07-31 00:00:00',61,959.20,'542809'),
(433,'2013-08-01 00:00:00',37,1419.80,'542810'),
(434,'2013-08-01 00:00:00',46,112.00,'542811'),
(435,'2013-08-04 00:00:00',20,2900.00,'542812'),
(436,'2013-08-04 00:00:00',4,899.00,'542813'),
(437,'2013-08-05 00:00:00',5,2222.40,'542814'),
(438,'2013-08-05 00:00:00',75,864.00,'542815'),
(439,'2013-08-06 00:00:00',21,166.00,'542816'),
(440,'2013-08-06 00:00:00',70,1058.40,'542817'),
(441,'2013-08-07 00:00:00',72,1274.00,'542818'),
(442,'2013-08-07 00:00:00',10,1832.80,'542819'),
(443,'2013-08-08 00:00:00',20,2275.20,'542820'),
(444,'2013-08-08 00:00:00',17,86.40,'542821'),
(445,'2013-08-11 00:00:00',59,1440.00,'542822'),
(446,'2013-08-11 00:00:00',71,3302.60,'542823'),
(447,'2013-08-12 00:00:00',36,442.00,'542824'),
(448,'2013-08-12 00:00:00',35,2333.20,'542825'),
(449,'2013-08-13 00:00:00',25,1903.80,'542826'),
(450,'2013-08-13 00:00:00',60,843.20,'542827'),
(451,'2013-08-14 00:00:00',71,2736.00,'542828'),
(452,'2013-08-14 00:00:00',83,1765.60,'542829'),
(453,'2013-08-15 00:00:00',19,3063.00,'542830'),
(454,'2013-08-15 00:00:00',65,3868.60,'542831'),
(455,'2013-08-18 00:00:00',20,2713.50,'542832'),
(456,'2013-08-18 00:00:00',20,1005.90,'542833'),
(457,'2013-08-19 00:00:00',49,1675.00,'542834'),
(458,'2013-08-19 00:00:00',47,400.00,'542835'),
(459,'2013-08-20 00:00:00',62,2018.20,'542836'),
(460,'2013-08-20 00:00:00',56,1194.00,'542837'),
(461,'2013-08-21 00:00:00',23,1622.40,'542838'),
(462,'2013-08-21 00:00:00',54,319.20,'542839'),
(463,'2013-08-22 00:00:00',10,802.00,'542840'),
(464,'2013-08-22 00:00:00',10,1208.50,'542841'),
(465,'2013-08-25 00:00:00',87,372.00,'542842'),
(466,'2013-08-25 00:00:00',41,2123.20,'542843'),
(467,'2013-08-26 00:00:00',21,231.40,'542844'),
(468,'2013-08-26 00:00:00',36,102.40,'542845'),
(469,'2013-08-27 00:00:00',87,720.00,'542846'),
(470,'2013-08-27 00:00:00',73,11283.20,'542847'),
(471,'2013-08-28 00:00:00',63,1814.80,'542848'),
(472,'2013-08-28 00:00:00',68,2208.00,'542849'),
(473,'2013-08-29 00:00:00',88,1897.60,'542850'),
(474,'2013-08-29 00:00:00',61,1273.20,'542851'),
(475,'2013-09-01 00:00:00',27,49.80,'542852'),
(476,'2013-09-01 00:00:00',31,1020.00,'542853'),
(477,'2013-09-02 00:00:00',51,11493.20,'542854'),
(478,'2013-09-02 00:00:00',41,480.00,'542855'),
(479,'2013-09-03 00:00:00',29,338.20,'542856'),
(480,'2013-09-03 00:00:00',59,651.00,'542857'),
(481,'2013-09-04 00:00:00',66,192.00,'542858'),
(482,'2013-09-04 00:00:00',37,1748.50,'542859'),
(483,'2013-09-05 00:00:00',20,5796.00,'542860'),
(484,'2013-09-05 00:00:00',10,2523.00,'542861'),
(485,'2013-09-08 00:00:00',75,485.00,'542862'),
(486,'2013-09-08 00:00:00',60,851.20,'542863'),
(487,'2013-09-09 00:00:00',24,360.00,'542864'),
(488,'2013-09-09 00:00:00',16,631.60,'542865'),
(489,'2013-09-10 00:00:00',7,2210.80,'542866'),
(490,'2013-09-10 00:00:00',87,393.00,'542867');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(491,'2013-09-11 00:00:00',79,567.50,'542868'),
(492,'2013-09-11 00:00:00',51,1078.00,'542869'),
(493,'2013-09-12 00:00:00',71,5793.10,'542870'),
(494,'2013-09-12 00:00:00',55,1755.00,'542871'),
(495,'2013-09-15 00:00:00',20,1792.00,'542872'),
(496,'2013-09-15 00:00:00',66,537.60,'542873'),
(497,'2013-09-16 00:00:00',5,1031.70,'542874'),
(498,'2013-09-16 00:00:00',5,174.90,'542875'),
(499,'2013-09-17 00:00:00',79,273.60,'542876'),
(500,'2013-09-17 00:00:00',67,914.40,'542877'),
(501,'2013-09-18 00:00:00',64,443.40,'542878'),
(502,'2013-09-18 00:00:00',7,1838.20,'542879'),
(503,'2013-09-19 00:00:00',84,531.40,'542880'),
(504,'2013-09-19 00:00:00',63,4277.40,'542881'),
(505,'2013-09-22 00:00:00',71,2096.00,'542882'),
(506,'2013-09-22 00:00:00',4,453.00,'542883'),
(507,'2013-09-23 00:00:00',41,414.00,'542884'),
(508,'2013-09-23 00:00:00',87,2684.00,'542885'),
(509,'2013-09-24 00:00:00',39,656.00,'542886'),
(510,'2013-09-24 00:00:00',39,1584.00,'542887'),
(511,'2013-09-25 00:00:00',48,424.00,'542888'),
(512,'2013-09-25 00:00:00',48,848.00,'542889'),
(513,'2013-09-26 00:00:00',63,1274.00,'542890'),
(514,'2013-09-26 00:00:00',63,268.80,'542891'),
(515,'2013-09-29 00:00:00',20,1614.80,'542892'),
(516,'2013-09-29 00:00:00',63,182.40,'542893'),
(517,'2013-09-30 00:00:00',65,2327.00,'542894'),
(518,'2013-09-30 00:00:00',38,516.80,'542895'),
(519,'2013-10-01 00:00:00',65,2835.00,'542896'),
(520,'2013-10-01 00:00:00',48,288.00,'542897'),
(521,'2013-10-02 00:00:00',38,240.40,'542898'),
(522,'2013-10-02 00:00:00',80,1191.20,'542899'),
(523,'2013-10-03 00:00:00',87,516.00,'542900'),
(524,'2013-10-03 00:00:00',38,144.00,'542901'),
(525,'2013-10-06 00:00:00',58,112.00,'542902'),
(526,'2013-10-06 00:00:00',39,164.40,'542903'),
(527,'2013-10-07 00:00:00',71,6155.90,'542904'),
(528,'2013-10-07 00:00:00',39,1497.00,'542905'),
(529,'2013-10-08 00:00:00',8,982.00,'542906'),
(530,'2013-10-08 00:00:00',24,2262.50,'542907'),
(531,'2013-10-09 00:00:00',28,1168.00,'542908'),
(532,'2013-10-09 00:00:00',75,4819.40,'542909'),
(533,'2013-10-10 00:00:00',46,1940.00,'542910'),
(534,'2013-10-10 00:00:00',9,88.50,'542911'),
(535,'2013-10-13 00:00:00',51,2233.60,'542912'),
(536,'2013-10-13 00:00:00',87,954.00,'542913'),
(537,'2013-10-14 00:00:00',84,144.80,'542914'),
(538,'2013-10-14 00:00:00',37,2545.20,'542915'),
(539,'2013-10-15 00:00:00',60,316.80,'542916'),
(540,'2013-10-15 00:00:00',25,2467.00,'542917'),
(541,'2013-10-16 00:00:00',55,934.50,'542918'),
(542,'2013-10-16 00:00:00',51,3463.20,'542919'),
(543,'2013-10-17 00:00:00',9,2564.40,'542920'),
(544,'2013-10-17 00:00:00',73,412.00,'542921'),
(545,'2013-10-20 00:00:00',25,2300.80,'542922'),
(546,'2013-10-20 00:00:00',44,1586.00,'542923'),
(547,'2013-10-21 00:00:00',89,2856.00,'542924'),
(548,'2013-10-21 00:00:00',63,2924.80,'542925'),
(549,'2013-10-22 00:00:00',65,1731.20,'542926'),
(550,'2013-10-22 00:00:00',21,928.00,'542927'),
(551,'2013-10-23 00:00:00',86,396.00,'542928'),
(552,'2013-10-23 00:00:00',75,141.60,'542929'),
(553,'2013-10-24 00:00:00',41,713.40,'542930'),
(554,'2013-10-24 00:00:00',20,5677.60,'542931'),
(555,'2013-10-27 00:00:00',28,154.00,'542932'),
(556,'2013-10-27 00:00:00',59,10741.60,'542933'),
(557,'2013-10-28 00:00:00',58,568.80,'542934'),
(558,'2013-10-28 00:00:00',4,480.00,'542935'),
(559,'2013-10-29 00:00:00',86,1106.40,'542936'),
(560,'2013-10-29 00:00:00',46,1360.00,'542937');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(561,'2013-10-30 00:00:00',41,452.00,'542938'),
(562,'2013-10-30 00:00:00',72,3654.40,'542939'),
(563,'2013-10-31 00:00:00',7,7390.20,'542940'),
(564,'2013-10-31 00:00:00',63,2273.60,'542941'),
(565,'2013-11-03 00:00:00',9,1549.60,'542942'),
(566,'2013-11-03 00:00:00',17,447.20,'542943'),
(567,'2013-11-04 00:00:00',19,950.00,'542944'),
(568,'2013-11-04 00:00:00',3,403.20,'542945'),
(569,'2013-11-05 00:00:00',29,136.00,'542946'),
(570,'2013-11-05 00:00:00',83,834.20,'542947'),
(571,'2013-11-06 00:00:00',20,1834.20,'542948'),
(572,'2013-11-06 00:00:00',75,2527.20,'542949'),
(573,'2013-11-07 00:00:00',14,1174.00,'542950'),
(574,'2013-11-07 00:00:00',41,91.20,'542951'),
(575,'2013-11-10 00:00:00',62,12281.20,'542952'),
(576,'2013-11-10 00:00:00',37,1708.00,'542953'),
(577,'2013-11-11 00:00:00',91,459.00,'542954'),
(578,'2013-11-11 00:00:00',36,338.00,'542955'),
(579,'2013-11-12 00:00:00',51,420.00,'542956'),
(580,'2013-11-12 00:00:00',72,1016.00,'542957'),
(581,'2013-11-13 00:00:00',24,103.20,'542958'),
(582,'2013-11-13 00:00:00',61,959.20,'542959'),
(583,'2013-11-14 00:00:00',37,1419.80,'542960'),
(584,'2013-11-14 00:00:00',46,112.00,'542961'),
(585,'2013-11-17 00:00:00',20,2900.00,'542962'),
(586,'2013-11-17 00:00:00',4,899.00,'542963'),
(587,'2013-11-18 00:00:00',5,2222.40,'542964'),
(588,'2013-11-18 00:00:00',75,864.00,'542965'),
(589,'2013-11-19 00:00:00',21,166.00,'542966'),
(590,'2013-11-19 00:00:00',70,1058.40,'542967'),
(591,'2013-11-20 00:00:00',72,1274.00,'542968'),
(592,'2013-11-20 00:00:00',10,1832.80,'542969'),
(593,'2013-11-21 00:00:00',20,2275.20,'542970'),
(594,'2013-11-21 00:00:00',17,86.40,'542971'),
(595,'2013-11-24 00:00:00',59,1440.00,'542972'),
(596,'2013-11-24 00:00:00',71,3302.60,'542973'),
(597,'2013-11-25 00:00:00',36,442.00,'542974'),
(598,'2013-11-25 00:00:00',35,2333.20,'542975'),
(599,'2013-11-26 00:00:00',25,1903.80,'542976'),
(600,'2013-11-26 00:00:00',60,843.20,'542977'),
(601,'2013-11-27 00:00:00',71,2736.00,'542978'),
(602,'2013-11-27 00:00:00',83,1765.60,'542979'),
(603,'2013-11-28 00:00:00',19,3063.00,'542980'),
(604,'2013-11-28 00:00:00',65,3868.60,'542981'),
(605,'2013-12-01 00:00:00',20,2713.50,'542982'),
(606,'2013-12-01 00:00:00',20,1005.90,'542983'),
(607,'2013-12-02 00:00:00',49,1675.00,'542984'),
(608,'2013-12-02 00:00:00',47,400.00,'542985'),
(609,'2013-12-03 00:00:00',62,2018.20,'542986'),
(610,'2013-12-03 00:00:00',56,1194.00,'542987'),
(611,'2013-12-04 00:00:00',23,1622.40,'542988'),
(612,'2013-12-04 00:00:00',54,319.20,'542989'),
(613,'2013-12-05 00:00:00',10,802.00,'542990'),
(614,'2013-12-05 00:00:00',10,1208.50,'542991'),
(615,'2013-12-08 00:00:00',87,372.00,'542992'),
(616,'2013-12-08 00:00:00',41,2123.20,'542993'),
(617,'2013-12-09 00:00:00',21,231.40,'542994'),
(618,'2013-12-09 00:00:00',36,102.40,'542995'),
(619,'2013-12-10 00:00:00',87,720.00,'542996'),
(620,'2013-12-10 00:00:00',73,11283.20,'542997'),
(621,'2013-12-11 00:00:00',63,1814.80,'542998'),
(622,'2013-12-11 00:00:00',68,2208.00,'542999'),
(623,'2013-12-12 00:00:00',88,1897.60,'543000'),
(624,'2013-12-12 00:00:00',61,1273.20,'543001'),
(625,'2013-12-15 00:00:00',27,49.80,'543002'),
(626,'2013-12-15 00:00:00',31,1020.00,'543003'),
(627,'2013-12-16 00:00:00',51,11493.20,'543004'),
(628,'2013-12-16 00:00:00',41,480.00,'543005'),
(629,'2013-12-17 00:00:00',29,338.20,'543006'),
(630,'2013-12-17 00:00:00',59,651.00,'543007');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(631,'2013-12-18 00:00:00',66,192.00,'543008'),
(632,'2013-12-18 00:00:00',37,1748.50,'543009'),
(633,'2013-12-19 00:00:00',20,5796.00,'543010'),
(634,'2013-12-19 00:00:00',10,2523.00,'543011'),
(635,'2013-12-22 00:00:00',75,485.00,'543012'),
(636,'2013-12-22 00:00:00',60,851.20,'543013'),
(637,'2013-12-23 00:00:00',24,360.00,'543014'),
(638,'2013-12-23 00:00:00',16,631.60,'543015'),
(639,'2013-12-24 00:00:00',7,2210.80,'543016'),
(640,'2013-12-24 00:00:00',87,393.00,'543017'),
(641,'2013-12-25 00:00:00',79,567.50,'543018'),
(642,'2013-12-25 00:00:00',51,1078.00,'543019'),
(643,'2013-12-26 00:00:00',71,5793.10,'543020'),
(644,'2013-12-26 00:00:00',55,1755.00,'543021'),
(645,'2013-12-29 00:00:00',20,1792.00,'543022'),
(646,'2013-12-29 00:00:00',66,537.60,'543023'),
(647,'2013-12-30 00:00:00',5,1031.70,'543024'),
(648,'2013-12-30 00:00:00',5,174.90,'543025'),
(649,'2013-12-31 00:00:00',79,273.60,'543026'),
(650,'2013-12-31 00:00:00',67,914.40,'543027'),
(651,'2014-01-01 00:00:00',64,443.40,'543028'),
(652,'2014-01-01 00:00:00',7,1838.20,'543029'),
(653,'2014-01-02 00:00:00',84,531.40,'543030'),
(654,'2014-01-02 00:00:00',63,4277.40,'543031'),
(655,'2014-01-05 00:00:00',71,2096.00,'543032'),
(656,'2014-01-05 00:00:00',4,453.00,'543033'),
(657,'2014-01-06 00:00:00',41,414.00,'543034'),
(658,'2014-01-06 00:00:00',87,2684.00,'543035'),
(659,'2014-01-07 00:00:00',39,656.00,'543036'),
(660,'2014-01-07 00:00:00',39,1584.00,'543037'),
(661,'2014-01-08 00:00:00',48,424.00,'543038'),
(662,'2014-01-08 00:00:00',48,848.00,'543039'),
(663,'2014-01-09 00:00:00',63,1274.00,'543040'),
(664,'2014-01-09 00:00:00',63,268.80,'543041'),
(665,'2014-01-12 00:00:00',20,1614.80,'543042'),
(666,'2014-01-12 00:00:00',63,182.40,'543043'),
(667,'2014-01-13 00:00:00',65,2327.00,'543044'),
(668,'2014-01-13 00:00:00',38,516.80,'543045'),
(669,'2014-01-14 00:00:00',65,2835.00,'543046'),
(670,'2014-01-14 00:00:00',48,288.00,'543047'),
(671,'2014-01-15 00:00:00',38,240.40,'543048'),
(672,'2014-01-15 00:00:00',80,1191.20,'543049'),
(673,'2014-01-16 00:00:00',87,516.00,'543050'),
(674,'2014-01-16 00:00:00',38,144.00,'543051'),
(675,'2014-01-19 00:00:00',58,112.00,'543052'),
(676,'2014-01-19 00:00:00',39,164.40,'543053'),
(677,'2014-01-20 00:00:00',71,6155.90,'543054'),
(678,'2014-01-20 00:00:00',39,1497.00,'543055'),
(679,'2014-01-21 00:00:00',8,982.00,'543056'),
(680,'2014-01-21 00:00:00',24,2262.50,'543057'),
(681,'2014-01-22 00:00:00',28,1168.00,'543058'),
(682,'2014-01-22 00:00:00',75,4819.40,'543059'),
(683,'2014-01-23 00:00:00',46,1940.00,'543060'),
(684,'2014-01-23 00:00:00',9,88.50,'543061'),
(685,'2014-01-26 00:00:00',51,2233.60,'543062'),
(686,'2014-01-26 00:00:00',87,954.00,'543063'),
(687,'2014-01-27 00:00:00',84,144.80,'543064'),
(688,'2014-01-27 00:00:00',37,2545.20,'543065'),
(689,'2014-01-28 00:00:00',60,316.80,'543066'),
(690,'2014-01-28 00:00:00',25,2467.00,'543067'),
(691,'2014-01-29 00:00:00',55,934.50,'543068'),
(692,'2014-01-29 00:00:00',51,3463.20,'543069'),
(693,'2014-01-30 00:00:00',9,2564.40,'543070'),
(694,'2014-01-30 00:00:00',73,412.00,'543071'),
(695,'2014-02-02 00:00:00',25,2300.80,'543072'),
(696,'2014-02-02 00:00:00',44,1586.00,'543073'),
(697,'2014-02-03 00:00:00',89,2856.00,'543074'),
(698,'2014-02-03 00:00:00',63,2924.80,'543075'),
(699,'2014-02-04 00:00:00',65,1731.20,'543076'),
(700,'2014-02-04 00:00:00',21,928.00,'543077');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(701,'2014-02-05 00:00:00',86,396.00,'543078'),
(702,'2014-02-05 00:00:00',75,141.60,'543079'),
(703,'2014-02-06 00:00:00',41,713.40,'543080'),
(704,'2014-02-06 00:00:00',20,5677.60,'543081'),
(705,'2014-02-09 00:00:00',28,154.00,'543082'),
(706,'2014-02-09 00:00:00',59,10741.60,'543083'),
(707,'2014-02-10 00:00:00',58,568.80,'543084'),
(708,'2014-02-10 00:00:00',4,480.00,'543085'),
(709,'2014-02-11 00:00:00',86,1106.40,'543086'),
(710,'2014-02-11 00:00:00',46,1360.00,'543087'),
(711,'2014-02-12 00:00:00',41,452.00,'543088'),
(712,'2014-02-12 00:00:00',72,3654.40,'543089'),
(713,'2014-02-13 00:00:00',7,7390.20,'543090'),
(714,'2014-02-13 00:00:00',63,2273.60,'543091'),
(715,'2014-02-16 00:00:00',9,1549.60,'543092'),
(716,'2014-02-16 00:00:00',17,447.20,'543093'),
(717,'2014-02-17 00:00:00',19,950.00,'543094'),
(718,'2014-02-17 00:00:00',3,403.20,'543095'),
(719,'2014-02-18 00:00:00',29,136.00,'543096'),
(720,'2014-02-18 00:00:00',83,834.20,'543097'),
(721,'2014-02-19 00:00:00',20,1834.20,'543098'),
(722,'2014-02-19 00:00:00',75,2527.20,'543099'),
(723,'2014-02-20 00:00:00',14,1174.00,'543100'),
(724,'2014-02-20 00:00:00',41,91.20,'543101'),
(725,'2014-02-23 00:00:00',62,12281.20,'543102'),
(726,'2014-02-23 00:00:00',37,1708.00,'543103'),
(727,'2014-02-24 00:00:00',91,459.00,'543104'),
(728,'2014-02-24 00:00:00',36,338.00,'543105'),
(729,'2014-02-25 00:00:00',51,420.00,'543106'),
(730,'2014-02-25 00:00:00',72,1016.00,'543107'),
(731,'2014-02-26 00:00:00',24,103.20,'543108'),
(732,'2014-02-26 00:00:00',61,959.20,'543109'),
(733,'2014-02-27 00:00:00',37,1419.80,'543110'),
(734,'2014-02-27 00:00:00',46,112.00,'543111'),
(735,'2014-03-02 00:00:00',20,2900.00,'543112'),
(736,'2014-03-02 00:00:00',4,899.00,'543113'),
(737,'2014-03-03 00:00:00',5,2222.40,'543114'),
(738,'2014-03-03 00:00:00',75,864.00,'543115'),
(739,'2014-03-04 00:00:00',21,166.00,'543116'),
(740,'2014-03-04 00:00:00',70,1058.40,'543117'),
(741,'2014-03-05 00:00:00',72,1274.00,'543118'),
(742,'2014-03-05 00:00:00',10,1832.80,'543119'),
(743,'2014-03-06 00:00:00',20,2275.20,'543120'),
(744,'2014-03-06 00:00:00',17,86.40,'543121'),
(745,'2014-03-09 00:00:00',59,1440.00,'543122'),
(746,'2014-03-09 00:00:00',71,3302.60,'543123'),
(747,'2014-03-10 00:00:00',36,442.00,'543124'),
(748,'2014-03-10 00:00:00',35,2333.20,'543125'),
(749,'2014-03-11 00:00:00',25,1903.80,'543126'),
(750,'2014-03-11 00:00:00',60,843.20,'543127'),
(751,'2014-03-12 00:00:00',71,2736.00,'543128'),
(752,'2014-03-12 00:00:00',83,1765.60,'543129'),
(753,'2014-03-13 00:00:00',19,3063.00,'543130'),
(754,'2014-03-13 00:00:00',65,3868.60,'543131'),
(755,'2014-03-16 00:00:00',20,2713.50,'543132'),
(756,'2014-03-16 00:00:00',20,1005.90,'543133'),
(757,'2014-03-17 00:00:00',49,1675.00,'543134'),
(758,'2014-03-17 00:00:00',47,400.00,'543135'),
(759,'2014-03-18 00:00:00',62,2018.20,'543136'),
(760,'2014-03-18 00:00:00',56,1194.00,'543137'),
(761,'2014-03-19 00:00:00',23,1622.40,'543138'),
(762,'2014-03-19 00:00:00',54,319.20,'543139'),
(763,'2014-03-20 00:00:00',10,802.00,'543140'),
(764,'2014-03-20 00:00:00',10,1208.50,'543141'),
(765,'2014-03-23 00:00:00',87,372.00,'543142'),
(766,'2014-03-23 00:00:00',41,2123.20,'543143'),
(767,'2014-03-24 00:00:00',21,231.40,'543144'),
(768,'2014-03-24 00:00:00',36,102.40,'543145'),
(769,'2014-03-25 00:00:00',87,720.00,'543146'),
(770,'2014-03-25 00:00:00',73,11283.20,'543147');
INSERT INTO Orders (order_id, order_time, customer_id, total_amount, order_number)
VALUES
(771,'2014-03-26 00:00:00',63,1814.80,'543148'),
(772,'2014-03-26 00:00:00',68,2208.00,'543149'),
(773,'2014-03-27 00:00:00',88,1897.60,'543150'),
(774,'2014-03-27 00:00:00',61,1273.20,'543151'),
(775,'2014-03-30 00:00:00',27,49.80,'543152'),
(776,'2014-03-30 00:00:00',31,1020.00,'543153'),
(777,'2014-03-31 00:00:00',51,11493.20,'543154'),
(778,'2014-03-31 00:00:00',41,480.00,'543155'),
(779,'2014-04-01 00:00:00',29,338.20,'543156'),
(780,'2014-04-01 00:00:00',59,651.00,'543157'),
(781,'2014-04-02 00:00:00',66,192.00,'543158'),
(782,'2014-04-02 00:00:00',37,1748.50,'543159'),
(783,'2014-04-03 00:00:00',20,5796.00,'543160'),
(784,'2014-04-03 00:00:00',10,2523.00,'543161'),
(785,'2014-04-06 00:00:00',75,485.00,'543162'),
(786,'2014-04-06 00:00:00',60,851.20,'543163'),
(787,'2014-04-07 00:00:00',24,360.00,'543164'),
(788,'2014-04-07 00:00:00',16,631.60,'543165'),
(789,'2014-04-08 00:00:00',7,2210.80,'543166'),
(790,'2014-04-08 00:00:00',87,393.00,'543167'),
(791,'2014-04-09 00:00:00',79,567.50,'543168'),
(792,'2014-04-09 00:00:00',51,1078.00,'543169'),
(793,'2014-04-10 00:00:00',71,5793.10,'543170'),
(794,'2014-04-10 00:00:00',55,1755.00,'543171'),
(795,'2014-04-13 00:00:00',20,1792.00,'543172'),
(796,'2014-04-13 00:00:00',66,537.60,'543173'),
(797,'2014-04-14 00:00:00',5,1031.70,'543174'),
(798,'2014-04-14 00:00:00',5,174.90,'543175'),
(799,'2014-04-15 00:00:00',79,273.60,'543176'),
(800,'2014-04-15 00:00:00',67,914.40,'543177'),
(801,'2014-04-16 00:00:00',64,443.40,'543178'),
(802,'2014-04-16 00:00:00',7,1838.20,'543179'),
(803,'2014-04-17 00:00:00',84,531.40,'543180'),
(804,'2014-04-17 00:00:00',63,4277.40,'543181'),
(805,'2014-04-20 00:00:00',71,2096.00,'543182'),
(806,'2014-04-20 00:00:00',4,453.00,'543183'),
(807,'2014-04-21 00:00:00',41,414.00,'543184'),
(808,'2014-04-21 00:00:00',87,2684.00,'543185'),
(809,'2014-04-22 00:00:00',39,656.00,'543186'),
(810,'2014-04-22 00:00:00',39,1584.00,'543187'),
(811,'2014-04-23 00:00:00',48,424.00,'543188'),
(812,'2014-04-23 00:00:00',48,848.00,'543189'),
(813,'2014-04-24 00:00:00',63,1274.00,'543190'),
(814,'2014-04-24 00:00:00',63,268.80,'543191'),
(815,'2014-04-27 00:00:00',20,1614.80,'543192'),
(816,'2014-04-27 00:00:00',63,182.40,'543193'),
(817,'2014-04-28 00:00:00',65,2327.00,'543194'),
(818,'2014-04-28 00:00:00',38,516.80,'543195'),
(819,'2014-04-29 00:00:00',65,2835.00,'543196'),
(820,'2014-04-29 00:00:00',48,288.00,'543197'),
(821,'2014-04-30 00:00:00',38,240.40,'543198'),
(822,'2014-04-30 00:00:00',80,1191.20,'543199'),
(823,'2014-05-01 00:00:00',87,516.00,'543200'),
(824,'2014-05-01 00:00:00',38,144.00,'543201'),
(825,'2014-05-04 00:00:00',58,112.00,'543202'),
(826,'2014-05-04 00:00:00',39,164.40,'543203'),
(827,'2014-05-05 00:00:00',71,6155.90,'543204'),
(828,'2014-05-05 00:00:00',39,1497.00,'543205'),
(829,'2014-05-06 00:00:00',8,982.00,'543206'),
(830,'2014-05-06 00:00:00',24,2262.50,'543207');
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1,1,11,14.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2,1,42,9.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(3,1,72,34.80,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(4,2,14,18.60,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(5,2,51,42.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(6,3,41,7.70,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(7,3,51,42.40,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(8,3,65,16.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(9,4,22,16.80,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(10,4,57,15.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(11,4,65,16.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(12,5,20,64.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(13,5,33,2.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(14,5,60,27.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(15,6,31,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(16,6,39,14.40,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(17,6,49,16.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(18,7,24,3.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(19,7,55,19.20,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(20,7,74,8.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(21,8,2,15.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(22,8,16,13.90,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(23,8,36,15.20,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(24,8,59,44.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(25,9,53,26.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(26,9,77,10.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(27,10,27,35.10,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(28,10,39,14.40,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(29,10,77,10.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(30,11,2,15.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(31,11,5,17.00,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(32,11,32,25.60,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(33,12,21,8.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(34,12,37,20.80,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(35,13,41,7.70,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(36,13,57,15.60,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(37,13,62,39.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(38,13,70,12.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(39,14,21,8.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(40,14,35,14.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(41,15,5,17.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(42,15,7,24.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(43,15,56,30.40,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(44,16,16,13.90,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(45,16,24,3.60,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(46,16,30,20.70,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(47,16,74,8.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(48,17,2,15.20,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(49,17,41,7.70,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(50,18,17,31.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(51,18,70,12.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(52,19,12,30.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(53,20,40,14.70,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(54,20,59,44.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(55,20,76,14.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(56,21,29,99.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(57,21,72,27.80,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(58,22,33,2.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(59,22,72,27.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(60,23,36,15.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(61,23,43,36.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(62,24,33,2.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(63,25,20,64.80,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(64,25,31,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(65,25,72,27.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(66,26,10,24.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(67,26,31,10.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(68,26,33,2.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(69,26,40,14.70,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(70,26,76,14.40,33);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(71,27,71,17.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(72,27,72,27.80,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(73,28,24,3.60,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(74,28,59,44.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(75,29,10,24.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(76,29,13,4.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(77,30,28,36.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(78,30,62,39.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(79,31,44,15.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(80,31,59,44.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(81,31,63,35.10,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(82,31,73,12.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(83,32,17,31.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(84,33,24,3.60,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(85,33,55,19.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(86,33,75,6.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(87,34,19,7.30,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(88,34,24,3.60,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(89,34,35,14.40,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(90,35,30,20.70,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(91,35,57,15.60,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(92,36,15,12.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(93,36,19,7.30,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(94,36,60,27.20,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(95,36,72,27.80,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(96,37,27,35.10,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(97,37,44,15.50,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(98,37,60,27.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(99,37,67,11.20,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(100,38,1,14.40,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(101,38,40,14.70,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(102,38,53,26.20,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(103,39,35,14.40,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(104,39,62,39.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(105,40,16,13.90,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(106,40,34,11.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(107,40,46,9.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(108,41,54,5.90,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(109,41,68,10.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(110,42,3,8.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(111,42,64,26.60,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(112,43,5,17.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(113,43,29,99.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(114,43,49,16.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(115,43,77,10.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(116,44,13,4.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(117,44,44,15.50,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(118,44,51,42.40,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(119,45,20,64.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(120,46,18,50.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(121,46,24,3.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(122,46,63,35.10,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(123,46,75,6.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(124,47,1,14.40,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(125,47,17,31.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(126,47,43,36.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(127,47,60,27.20,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(128,47,75,6.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(129,48,56,30.40,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(130,49,11,16.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(131,49,16,13.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(132,49,69,28.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(133,50,39,14.40,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(134,50,72,27.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(135,51,2,15.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(136,51,36,15.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(137,51,59,44.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(138,51,62,39.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(139,52,19,7.30,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(140,52,70,12.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(141,53,66,13.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(142,53,68,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(143,54,40,14.70,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(144,54,56,30.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(145,55,17,31.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(146,55,28,36.40,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(147,55,43,36.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(148,56,40,14.70,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(149,56,65,16.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(150,56,68,10.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(151,57,49,16.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(152,57,59,44.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(153,57,71,17.20,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(154,58,18,50.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(155,58,29,99.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(156,58,39,14.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(157,59,30,20.70,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(158,59,53,26.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(159,59,54,5.90,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(160,60,62,39.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(161,60,68,10.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(162,61,69,28.80,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(163,61,70,12.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(164,62,4,17.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(165,62,6,20.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(166,62,42,11.20,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(167,62,43,36.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(168,62,71,17.20,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(169,63,16,13.90,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(170,63,62,39.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(171,64,42,11.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(172,64,69,28.80,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(173,65,28,36.40,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(174,65,43,36.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(175,65,53,26.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(176,65,75,6.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(177,66,36,15.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(178,67,32,25.60,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(179,67,58,10.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(180,67,62,39.40,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(181,68,34,11.20,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(182,68,70,12.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(183,69,41,7.70,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(184,69,62,39.40,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(185,70,1,14.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(186,71,41,7.70,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(187,71,76,14.40,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(188,72,17,31.20,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(189,72,28,36.40,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(190,72,76,14.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(191,73,71,17.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(192,74,35,14.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(193,75,52,5.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(194,76,15,12.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(195,76,25,11.20,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(196,76,39,14.40,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(197,77,16,13.90,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(198,77,35,14.40,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(199,77,46,9.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(200,77,59,44.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(201,77,63,35.10,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(202,78,6,20.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(203,78,13,4.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(204,78,14,18.60,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(205,78,31,10.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(206,78,72,27.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(207,79,4,17.60,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(208,79,57,15.60,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(209,79,75,6.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(210,80,2,15.20,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(211,80,11,16.80,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(212,80,30,20.70,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(213,80,58,10.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(214,81,59,44.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(215,81,65,16.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(216,81,68,10.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(217,82,19,7.30,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(218,82,30,20.70,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(219,82,38,210.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(220,82,56,30.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(221,83,26,24.90,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(222,83,72,27.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(223,84,54,5.90,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(224,85,18,50.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(225,85,42,11.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(226,85,47,7.60,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(227,86,14,18.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(228,86,21,8.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(229,86,71,17.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(230,87,52,5.60,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(231,87,68,10.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(232,88,2,15.20,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(233,88,31,10.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(234,88,32,25.60,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(235,88,51,42.40,48);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(236,89,4,17.60,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(237,90,23,7.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(238,90,26,24.90,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(239,90,36,15.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(240,90,37,20.80,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(241,90,72,27.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(242,91,17,31.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(243,91,30,20.70,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(244,92,4,17.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(245,92,17,31.20,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(246,92,62,39.40,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(247,93,18,50.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(248,93,41,7.70,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(249,93,43,36.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(250,94,33,2.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(251,94,59,44.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(252,95,2,15.20,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(253,95,31,10.00,56);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(254,95,36,15.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(255,95,55,19.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(256,96,64,26.60,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(257,96,68,10.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(258,96,76,14.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(259,97,4,17.60,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(260,97,8,32.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(261,98,8,32.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(262,98,19,7.30,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(263,98,42,11.20,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(264,99,17,31.20,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(265,99,56,30.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(266,100,25,11.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(267,100,39,14.40,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(268,100,40,14.70,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(269,100,75,6.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(270,101,1,14.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(271,101,23,7.20,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(272,102,54,5.90,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(273,103,50,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(274,103,69,28.80,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(275,104,38,210.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(276,104,41,7.70,13);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(277,104,44,15.50,77);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(278,104,65,16.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(279,105,24,3.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(280,105,54,5.90,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(281,106,11,16.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(282,106,38,210.80,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(283,107,1,14.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(284,107,29,99.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(285,108,24,3.60,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(286,108,57,15.60,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(287,109,31,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(288,109,55,19.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(289,109,69,28.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(290,110,10,24.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(291,110,26,24.90,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(292,110,60,27.20,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(293,111,24,3.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(294,111,34,11.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(295,111,36,15.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(296,112,16,13.90,56);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(297,112,31,10.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(298,112,60,27.20,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(299,113,28,36.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(300,113,29,99.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(301,113,38,210.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(302,113,49,16.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(303,113,54,5.90,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(304,114,39,14.40,54);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(305,114,60,27.20,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(306,115,25,11.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(307,115,51,42.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(308,115,54,5.90,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(309,116,31,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(310,116,75,6.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(311,116,76,14.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(312,117,69,28.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(313,117,71,17.20,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(314,118,11,16.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(315,119,65,16.80,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(316,119,77,10.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(317,120,34,11.20,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(318,120,54,5.90,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(319,120,65,16.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(320,120,77,10.40,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(321,121,21,8.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(322,121,28,36.40,13);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(323,121,57,15.60,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(324,121,64,26.60,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(325,122,29,99.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(326,122,56,30.40,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(327,123,1,14.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(328,123,64,26.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(329,123,74,8.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(330,124,36,15.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(331,125,20,64.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(332,125,38,210.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(333,125,60,27.20,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(334,125,72,27.80,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(335,126,58,10.60,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(336,126,71,17.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(337,127,31,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(338,127,58,10.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(339,128,14,18.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(340,128,54,5.90,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(341,129,31,10.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(342,130,28,36.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(343,130,39,14.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(344,131,71,17.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(345,132,41,7.70,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(346,132,63,35.10,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(347,132,65,16.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(348,133,30,20.70,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(349,133,53,26.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(350,133,60,27.20,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(351,133,70,12.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(352,134,74,8.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(353,135,5,17.00,32);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(354,135,18,50.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(355,135,29,99.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(356,135,33,2.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(357,135,74,8.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(358,136,13,4.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(359,136,50,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(360,136,56,30.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(361,137,20,64.80,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(362,137,60,27.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(363,138,7,24.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(364,138,60,27.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(365,138,68,10.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(366,139,24,3.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(367,139,34,11.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(368,140,24,3.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(369,140,28,36.40,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(370,140,59,44.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(371,140,71,17.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(372,141,45,7.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(373,141,52,5.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(374,141,53,26.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(375,142,10,24.80,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(376,142,55,19.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(377,142,62,39.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(378,142,70,12.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(379,143,31,10.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(380,143,35,14.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(381,143,46,9.60,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(382,143,72,27.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(383,144,13,4.80,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(384,145,69,28.80,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(385,146,2,15.20,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(386,146,14,18.60,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(387,146,25,11.20,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(388,146,26,24.90,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(389,146,31,10.00,32);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(390,147,13,4.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(391,147,62,39.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(392,148,46,9.60,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(393,148,53,26.20,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(394,148,69,28.80,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(395,149,23,7.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(396,149,71,17.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(397,149,72,27.80,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(398,150,21,8.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(399,150,51,42.40,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(400,151,35,14.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(401,151,55,19.20,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(402,152,68,10.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(403,152,71,17.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(404,152,76,14.40,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(405,152,77,10.40,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(406,153,29,99.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(407,153,35,14.40,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(408,153,49,16.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(409,154,30,20.70,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(410,154,56,30.40,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(411,154,65,16.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(412,154,71,17.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(413,155,23,7.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(414,155,63,35.10,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(415,156,16,13.90,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(416,156,48,10.20,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(417,157,26,24.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(418,157,42,11.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(419,157,49,16.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(420,158,3,8.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(421,159,1,14.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(422,159,21,8.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(423,159,28,36.40,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(424,159,36,15.20,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(425,159,40,14.70,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(426,160,11,16.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(427,160,69,28.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(428,160,71,17.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(429,161,37,20.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(430,161,54,5.90,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(431,161,62,39.40,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(432,162,14,18.60,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(433,162,21,8.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(434,163,33,2.00,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(435,163,59,44.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(436,164,41,7.70,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(437,164,44,15.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(438,164,59,44.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(439,165,14,18.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(440,166,1,14.40,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(441,166,62,39.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(442,166,76,14.40,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(443,167,19,7.30,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(444,167,33,2.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(445,168,17,31.20,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(446,168,33,2.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(447,169,19,7.30,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(448,169,53,26.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(449,169,57,15.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(450,170,38,210.80,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(451,170,46,9.60,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(452,170,68,10.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(453,170,77,10.40,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(454,171,2,15.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(455,171,47,7.60,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(456,171,61,22.80,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(457,171,74,8.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(458,172,60,27.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(459,172,69,28.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(460,173,9,77.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(461,173,13,4.80,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(462,173,70,12.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(463,173,73,12.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(464,174,19,7.30,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(465,174,26,24.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(466,174,53,26.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(467,174,77,10.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(468,175,26,24.90,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(469,176,31,10.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(470,176,59,44.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(471,177,35,14.40,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(472,177,38,210.80,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(473,177,68,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(474,178,55,19.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(475,178,76,14.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(476,179,56,30.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(477,179,64,26.60,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(478,180,14,18.60,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(479,181,46,9.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(480,182,50,13.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(481,182,63,35.10,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(482,183,17,31.20,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(483,183,21,8.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(484,183,56,30.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(485,183,59,44.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(486,184,17,31.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(487,184,40,14.70,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(488,184,47,7.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(489,185,26,24.90,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(490,185,54,5.90,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(491,186,56,30.40,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(492,187,11,16.80,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(493,187,76,14.40,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(494,188,2,15.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(495,188,22,16.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(496,188,72,27.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(497,189,46,9.60,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(498,189,56,30.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(499,189,64,26.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(500,189,75,6.20,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(501,190,53,26.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(502,191,19,7.30,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(503,191,34,11.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(504,191,57,15.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(505,192,12,30.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(506,192,16,13.90,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(507,192,64,26.60,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(508,192,74,8.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(509,193,2,15.20,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(510,193,16,13.90,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(511,193,29,99.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(512,193,61,22.80,90);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(513,194,27,35.10,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(514,195,11,16.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(515,195,54,5.90,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(516,195,66,13.60,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(517,196,11,16.80,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(518,196,28,36.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(519,197,17,31.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(520,197,26,24.90,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(521,197,35,14.40,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(522,197,41,7.70,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(523,198,39,14.40,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(524,198,54,5.90,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(525,199,19,7.30,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(526,199,24,3.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(527,199,31,10.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(528,199,52,5.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(529,200,19,7.30,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(530,200,65,16.80,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(531,200,71,17.20,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(532,201,26,24.90,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(533,201,40,14.70,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(534,202,10,24.80,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(535,202,52,5.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(536,202,62,39.40,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(537,203,10,24.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(538,203,54,5.90,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(539,204,55,19.20,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(540,204,64,26.60,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(541,204,65,16.80,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(542,204,77,10.40,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(543,205,28,36.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(544,205,44,15.50,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(545,206,48,10.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(546,206,70,12.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(547,207,16,13.90,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(548,207,33,2.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(549,207,46,9.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(550,208,39,14.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(551,208,53,26.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(552,208,61,22.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(553,208,71,17.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(554,209,21,8.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(555,209,49,16.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(556,210,59,44.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(557,211,26,24.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(558,211,28,36.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(559,211,43,36.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(560,211,56,30.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(561,211,71,17.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(562,212,7,24.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(563,212,46,9.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(564,212,72,27.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(565,213,68,10.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(566,213,75,6.20,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(567,214,21,8.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(568,214,30,20.70,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(569,214,55,19.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(570,215,13,4.80,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(571,215,23,7.20,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(572,216,19,7.30,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(573,216,42,11.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(574,217,4,17.60,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(575,217,43,36.80,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(576,217,56,30.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(577,217,60,27.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(578,218,24,3.60,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(579,218,29,99.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(580,218,40,14.70,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(581,218,45,7.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(582,218,50,13.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(583,219,11,16.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(584,219,46,9.60,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(585,220,24,3.60,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(586,220,25,11.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(587,221,30,20.70,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(588,221,43,36.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(589,222,2,15.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(590,222,16,13.90,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(591,222,44,15.50,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(592,223,18,50.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(593,223,23,7.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(594,223,64,26.60,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(595,224,7,24.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(596,224,56,30.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(597,225,24,3.60,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(598,225,51,42.40,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(599,226,33,2.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(600,226,71,17.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(601,227,14,18.60,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(602,227,28,36.40,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(603,227,40,14.70,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(604,227,75,6.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(605,228,31,10.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(606,228,66,13.60,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(607,228,76,14.40,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(608,229,55,19.20,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(609,229,70,12.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(610,230,1,14.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(611,230,21,8.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(612,230,39,14.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(613,231,10,24.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(614,232,38,210.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(615,232,53,26.20,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(616,232,59,44.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(617,232,64,26.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(618,233,47,7.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(619,233,59,44.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(620,234,49,16.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(621,234,60,27.20,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(622,235,40,14.70,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(623,236,34,11.20,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(624,236,77,10.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(625,237,21,8.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(626,237,40,14.70,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(627,237,51,42.40,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(628,238,2,15.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(629,238,3,8.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(630,238,55,19.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(631,238,70,12.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(632,239,11,16.80,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(633,239,51,42.40,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(634,239,74,8.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(635,240,19,7.30,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(636,240,26,24.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(637,240,54,5.90,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(638,241,59,44.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(639,241,73,12.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(640,242,11,16.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(641,242,16,13.90,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(642,243,59,44.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(643,243,68,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(644,243,75,6.20,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(645,244,44,15.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(646,244,77,10.40,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(647,245,25,11.20,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(648,245,42,11.20,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(649,246,65,16.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(650,246,66,13.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(651,246,69,28.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(652,247,56,30.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(653,248,23,7.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(654,248,41,7.70,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(655,248,77,10.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(656,249,31,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(657,250,56,30.40,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(658,250,72,27.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(659,250,77,10.40,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(660,251,24,4.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(661,251,40,18.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(662,251,42,14.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(663,252,28,45.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(664,252,49,20.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(665,253,15,15.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(666,253,28,45.60,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(667,254,54,7.45,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(668,255,45,9.50,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(669,255,53,32.80,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(670,255,67,14.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(671,256,14,23.25,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(672,256,65,21.05,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(673,257,2,19.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(674,257,21,10.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(675,257,53,32.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(676,257,61,28.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(677,258,62,49.30,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(678,259,25,14.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(679,259,70,15.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(680,260,43,46.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(681,260,48,12.75,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(682,261,13,6.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(683,261,39,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(684,262,28,45.60,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(685,263,29,123.79,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(686,263,75,7.75,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(687,264,4,22.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(688,264,7,30.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(689,264,8,40.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(690,265,24,4.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(691,265,46,12.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(692,265,47,9.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(693,265,60,34.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(694,266,21,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(695,266,32,32.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(696,266,61,28.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(697,267,20,81.00,39);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(698,267,28,45.60,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(699,267,56,38.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(700,267,65,21.05,39);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(701,267,75,7.75,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(702,268,9,97.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(703,268,16,17.45,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(704,268,27,43.90,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(705,268,33,2.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(706,268,60,34.00,84);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(707,269,18,62.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(708,269,41,9.65,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(709,269,42,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(710,270,52,7.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(711,270,59,55.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(712,270,70,15.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(713,271,24,4.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(714,271,38,263.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(715,271,44,19.45,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(716,272,10,31.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(717,272,56,38.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(718,272,60,34.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(719,273,24,4.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(720,273,53,32.80,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(721,274,35,18.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(722,274,41,9.65,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(723,274,68,12.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(724,275,1,18.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(725,275,8,40.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(726,275,30,25.89,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(727,275,40,18.40,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(728,276,17,39.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(729,276,20,81.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(730,276,37,26.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(731,276,41,9.65,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(732,277,10,31.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(733,277,30,25.89,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(734,277,43,46.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(735,277,54,7.45,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(736,278,36,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(737,278,40,18.40,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(738,279,1,18.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(739,279,13,6.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(740,279,56,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(741,280,4,22.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(742,280,36,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(743,281,11,21.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(744,281,33,2.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(745,281,72,34.80,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(746,282,55,24.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(747,282,68,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(748,282,69,36.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(749,283,17,39.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(750,283,43,46.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(751,283,61,28.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(752,283,76,18.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(753,284,59,55.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(754,285,30,25.89,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(755,285,66,17.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(756,286,4,22.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(757,286,72,34.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(758,286,73,15.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(759,287,30,25.89,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(760,287,40,18.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(761,287,54,7.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(762,288,11,21.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(763,288,40,18.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(764,288,57,19.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(765,288,59,55.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(766,289,12,38.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(767,289,31,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(768,289,33,2.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(769,289,60,34.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(770,290,31,12.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(771,290,51,53.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(772,290,58,13.25,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(773,290,72,34.80,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(774,290,73,15.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(775,291,70,15.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(776,291,72,34.80,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(777,292,13,6.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(778,292,21,10.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(779,292,33,2.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(780,292,49,20.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(781,293,3,10.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(782,293,26,31.23,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(783,293,38,263.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(784,293,68,12.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(785,294,24,4.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(786,294,38,263.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(787,294,65,21.05,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(788,294,71,21.50,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(789,295,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(790,295,54,7.45,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(791,296,12,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(792,296,23,9.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(793,297,28,45.60,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(794,297,67,14.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(795,298,11,21.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(796,299,7,30.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(797,299,35,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(798,299,62,49.30,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(799,300,32,32.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(800,300,36,19.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(801,301,34,14.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(802,301,41,9.65,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(803,302,31,12.50,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(804,302,45,9.50,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(805,302,51,53.00,48);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(806,303,17,39.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(807,303,19,9.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(808,303,21,10.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(809,303,61,28.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(810,304,16,17.45,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(811,304,35,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(812,304,44,19.45,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(813,305,69,36.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(814,305,75,7.75,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(815,306,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(816,306,16,17.45,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(817,306,22,21.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(818,306,31,12.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(819,306,35,18.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(820,307,16,17.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(821,307,23,9.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(822,307,62,49.30,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(823,307,77,13.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(824,308,14,23.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(825,308,19,9.20,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(826,308,24,4.50,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(827,308,51,53.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(828,308,56,38.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(829,309,72,34.80,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(830,310,64,33.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(831,310,75,7.75,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(832,311,47,9.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(833,311,51,53.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(834,311,52,7.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(835,311,53,32.80,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(836,311,73,15.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(837,312,41,9.65,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(838,312,55,24.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(839,313,30,25.89,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(840,313,62,49.30,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(841,314,44,19.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(842,314,51,53.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(843,315,33,2.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(844,315,62,49.30,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(845,316,36,19.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(846,316,52,7.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(847,317,17,39.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(848,317,31,12.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(849,317,55,24.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(850,318,24,4.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(851,318,64,33.25,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(852,319,11,21.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(853,319,18,62.50,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(854,319,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(855,320,31,12.50,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(856,320,51,53.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(857,320,59,55.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(858,321,10,31.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(859,322,31,12.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(860,322,76,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(861,323,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(862,323,56,38.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(863,324,14,23.25,11);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(864,324,42,14.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(865,325,16,17.45,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(866,325,32,32.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(867,325,40,18.40,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(868,325,75,7.75,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(869,326,17,39.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(870,326,34,14.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(871,326,53,32.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(872,327,33,2.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(873,327,40,18.40,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(874,327,62,49.30,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(875,327,64,33.25,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(876,328,59,55.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(877,328,63,43.90,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(878,328,72,34.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(879,328,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(880,329,1,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(881,329,31,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(882,329,44,19.45,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(883,330,39,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(884,330,75,7.75,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(885,330,77,13.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(886,331,35,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(887,331,57,19.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(888,332,15,15.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(889,332,75,7.75,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(890,333,14,23.25,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(891,333,41,9.65,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(892,333,65,21.05,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(893,334,75,7.75,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(894,335,57,19.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(895,335,76,18.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(896,336,29,123.79,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(897,336,60,34.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(898,336,69,36.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(899,337,31,12.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(900,338,47,9.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(901,339,52,7.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(902,340,26,31.23,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(903,340,35,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(904,340,77,13.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(905,341,18,62.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(906,341,42,14.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(907,342,35,18.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(908,343,1,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(909,343,77,13.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(910,344,3,10.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(911,344,7,30.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(912,344,54,7.45,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(913,345,15,15.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(914,345,26,31.23,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(915,346,20,81.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(916,346,69,36.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(917,346,76,18.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(918,347,52,7.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(919,347,58,13.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(920,348,35,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(921,348,61,28.50,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(922,348,69,36.00,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(923,349,56,38.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(924,349,63,43.90,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(925,349,75,7.75,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(926,350,24,4.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(927,350,57,19.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(928,350,65,21.05,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(929,351,27,43.90,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(930,351,71,21.50,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(931,352,62,49.30,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(932,353,54,7.45,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(933,353,73,15.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(934,354,13,6.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(935,354,59,55.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(936,355,77,13.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(937,356,22,21.00,48);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(938,356,49,20.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(939,357,48,12.75,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(940,357,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(941,358,16,17.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(942,358,59,55.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(943,358,60,34.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(944,358,71,21.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(945,359,4,22.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(946,359,55,24.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(947,359,62,49.30,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(948,360,7,30.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(949,360,17,39.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(950,360,33,2.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(951,360,40,18.40,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(952,360,72,34.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(953,361,56,38.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(954,362,1,18.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(955,362,10,31.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(956,362,21,10.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(957,363,36,19.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(958,364,1,18.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(959,364,2,19.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(960,364,60,34.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(961,365,10,31.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(962,365,36,19.00,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(963,365,49,20.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(964,365,60,34.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(965,365,76,18.00,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(966,366,13,6.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(967,366,75,7.75,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(968,367,11,21.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(969,367,21,10.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(970,367,39,18.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(971,368,55,24.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(972,369,38,263.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(973,369,56,38.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(974,369,70,15.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(975,369,71,21.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(976,370,59,55.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(977,371,6,25.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(978,371,56,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(979,371,68,12.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(980,372,21,10.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(981,372,22,21.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(982,373,24,4.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(983,373,52,7.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(984,374,19,9.20,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(985,374,23,9.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(986,374,70,15.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(987,374,71,21.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(988,375,2,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(989,375,68,12.50,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(990,376,14,23.25,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(991,376,19,9.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(992,376,21,10.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(993,376,24,4.50,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(994,376,35,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(995,377,28,45.60,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(996,377,29,123.79,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(997,377,44,19.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(998,378,14,23.25,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(999,378,42,14.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1000,378,60,34.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1001,379,53,32.80,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1002,379,60,34.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1003,379,71,21.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1004,380,62,49.30,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1005,380,73,15.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1006,381,1,18.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1007,382,29,123.79,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1008,382,64,33.25,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1009,383,55,24.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1010,383,76,18.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1011,384,75,7.75,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1012,385,2,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1013,385,33,2.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1014,386,12,38.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1015,386,13,6.00,13);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1016,386,26,31.23,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1017,386,62,49.30,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1018,387,7,30.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1019,387,18,62.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1020,387,51,53.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1021,387,75,7.75,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1022,388,4,22.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1023,388,5,21.35,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1024,388,22,21.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1025,389,4,22.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1026,389,58,13.25,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1027,390,11,21.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1028,390,50,16.25,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1029,390,56,38.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1030,391,45,9.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1031,391,65,21.05,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1032,391,72,34.80,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1033,392,18,62.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1034,393,69,36.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1035,393,70,15.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1036,394,2,19.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1037,394,40,18.40,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1038,395,21,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1039,395,61,28.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1040,396,28,45.60,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1041,396,39,18.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1042,396,46,12.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1043,397,18,62.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1044,397,43,46.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1045,397,46,12.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1046,398,18,62.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1047,398,36,19.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1048,399,1,18.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1049,399,10,31.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1050,399,71,21.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1051,399,77,13.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1052,400,19,9.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1053,400,39,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1054,401,22,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1055,401,24,4.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1056,402,28,45.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1057,402,72,34.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1058,403,30,25.89,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1059,403,53,32.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1060,403,54,7.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1061,404,19,9.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1062,404,22,21.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1063,405,30,25.89,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1064,405,42,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1065,406,16,17.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1066,406,60,34.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1067,407,4,22.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1068,407,39,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1069,407,54,7.45,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1070,408,41,9.65,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1071,409,14,23.25,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1072,409,44,19.45,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1073,409,47,9.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1074,410,15,15.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1075,410,41,9.65,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1076,410,46,12.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1077,410,47,9.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1078,410,56,38.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1079,410,60,34.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1080,411,21,10.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1081,411,40,18.40,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1082,411,60,34.00,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1083,411,77,13.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1084,412,31,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1085,412,40,18.40,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1086,412,70,15.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1087,413,20,81.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1088,414,39,18.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1089,414,58,13.25,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1090,415,68,12.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1091,416,40,18.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1092,416,42,14.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1093,416,51,53.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1094,417,10,31.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1095,417,56,38.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1096,417,65,21.05,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1097,418,51,53.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1098,418,59,55.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1099,418,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1100,419,29,123.79,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1101,419,65,21.05,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1102,420,69,36.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1103,420,71,21.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1104,421,31,12.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1105,421,55,24.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1106,421,64,33.25,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1107,422,36,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1108,423,23,9.00,32);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1109,423,46,12.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1110,423,67,14.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1111,423,73,15.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1112,423,75,7.75,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1113,424,16,17.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1114,424,62,49.30,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1115,424,65,21.05,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1116,425,38,263.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1117,425,71,21.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1118,426,16,17.45,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1119,426,42,14.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1120,426,43,46.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1121,427,23,9.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1122,428,14,23.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1123,428,53,32.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1124,428,58,13.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1125,429,10,31.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1126,429,19,9.20,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1127,429,44,19.45,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1128,430,26,31.23,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1129,430,33,2.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1130,431,12,38.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1131,431,33,2.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1132,431,41,9.65,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1133,431,54,7.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1134,432,59,55.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1135,433,16,17.45,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1136,433,31,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1137,433,42,14.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1138,434,19,9.20,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1139,434,21,10.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1140,434,64,33.25,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1141,435,33,2.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1142,435,66,17.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1143,435,75,7.75,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1144,436,52,7.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1145,437,40,18.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1146,437,47,9.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1147,437,60,34.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1148,438,10,31.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1149,438,41,9.65,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1150,438,47,9.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1151,439,17,39.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1152,439,26,31.23,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1153,440,9,97.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1154,440,29,123.79,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1155,440,36,19.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1156,441,10,31.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1157,441,28,45.60,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1158,441,34,14.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1159,442,1,18.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1160,443,56,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1161,443,77,13.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1162,444,1,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1163,444,29,123.79,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1164,444,43,46.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1165,444,44,19.45,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1166,444,62,49.30,48);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1167,445,63,43.90,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1168,446,9,97.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1169,446,54,7.45,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1170,446,69,36.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1171,446,73,15.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1172,447,7,30.00,90);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1173,447,59,55.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1174,447,70,15.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1175,448,8,40.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1176,448,12,38.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1177,448,24,4.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1178,449,17,39.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1179,449,46,12.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1180,450,19,9.20,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1181,450,35,18.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1182,450,58,13.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1183,450,70,15.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1184,451,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1185,451,17,39.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1186,451,29,123.79,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1187,451,65,21.05,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1188,451,70,15.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1189,452,47,9.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1190,453,1,18.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1191,453,34,14.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1192,453,68,12.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1193,453,71,21.50,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1194,454,59,55.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1195,454,71,21.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1196,454,76,18.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1197,455,3,10.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1198,455,76,18.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1199,456,2,19.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1200,456,59,55.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1201,456,73,15.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1202,457,4,22.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1203,457,24,4.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1204,457,48,12.75,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1205,458,31,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1206,458,32,32.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1207,459,16,17.45,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1208,459,43,46.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1209,459,59,55.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1210,460,55,24.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1211,460,57,19.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1212,460,70,15.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1213,461,5,21.35,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1214,461,36,19.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1215,462,8,40.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1216,462,51,53.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1217,462,60,34.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1218,463,19,9.20,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1219,463,47,9.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1220,464,19,9.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1221,464,41,9.65,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1222,464,53,32.80,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1223,465,53,32.80,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1224,465,56,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1225,466,10,31.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1226,466,26,31.23,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1227,466,45,9.50,110);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1228,466,46,12.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1229,467,2,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1230,467,17,39.00,27);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1231,467,47,9.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1232,467,56,38.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1233,467,58,13.25,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1234,468,10,31.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1235,468,71,21.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1236,469,21,10.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1237,469,51,53.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1238,469,61,28.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1239,470,21,10.00,32);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1240,470,54,7.45,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1241,470,69,36.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1242,471,12,38.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1243,471,16,17.45,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1244,471,36,19.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1245,471,62,49.30,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1246,472,18,62.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1247,472,30,25.89,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1248,472,54,7.45,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1249,473,35,18.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1250,473,71,21.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1251,474,44,19.45,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1252,475,2,19.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1253,475,31,12.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1254,475,68,12.50,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1255,475,75,7.75,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1256,476,26,31.23,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1257,477,10,31.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1258,477,61,28.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1259,478,41,9.65,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1260,478,52,7.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1261,478,55,24.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1262,479,4,22.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1263,479,11,21.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1264,480,17,39.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1265,480,56,38.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1266,480,59,55.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1267,481,30,25.89,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1268,481,40,18.40,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1269,481,55,24.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1270,481,60,34.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1271,482,1,18.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1272,482,21,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1273,482,50,16.25,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1274,483,16,17.45,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1275,483,31,12.50,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1276,483,65,21.05,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1277,484,21,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1278,484,51,53.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1279,485,76,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1280,486,14,23.25,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1281,486,28,45.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1282,486,52,7.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1283,487,6,25.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1284,487,30,25.89,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1285,487,76,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1286,488,61,28.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1287,488,77,13.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1288,489,65,21.05,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1289,489,75,7.75,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1290,490,13,6.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1291,490,41,9.65,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1292,491,16,17.45,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1293,492,36,19.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1294,492,52,7.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1295,493,28,45.60,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1296,493,35,18.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1297,493,45,9.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1298,493,56,38.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1299,494,2,19.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1300,495,3,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1301,495,60,34.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1302,495,72,34.80,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1303,496,46,12.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1304,497,40,18.40,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1305,498,18,62.50,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1306,498,44,19.45,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1307,498,59,55.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1308,498,72,34.80,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1309,499,13,6.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1310,499,42,14.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1311,499,62,49.30,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1312,499,69,36.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1313,500,31,12.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1314,500,41,9.65,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1315,500,63,43.90,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1316,500,69,36.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1317,501,23,9.00,44);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1318,501,40,18.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1319,501,56,38.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1320,502,56,38.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1321,502,59,55.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1322,502,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1323,503,14,23.25,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1324,503,45,9.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1325,503,59,55.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1326,504,26,31.23,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1327,504,30,25.89,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1328,504,50,16.25,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1329,504,73,15.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1330,505,1,18.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1331,505,69,36.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1332,506,45,9.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1333,506,74,10.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1334,507,40,18.40,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1335,508,47,9.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1336,508,56,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1337,508,57,19.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1338,508,69,36.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1339,509,18,62.50,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1340,509,36,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1341,509,68,12.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1342,509,69,36.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1343,510,34,14.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1344,510,59,55.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1345,510,62,49.30,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1346,510,64,33.25,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1347,511,26,31.23,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1348,511,52,7.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1349,511,70,15.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1350,512,32,32.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1351,513,25,14.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1352,513,27,43.90,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1353,513,43,46.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1354,514,25,14.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1355,514,75,7.75,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1356,515,39,18.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1357,515,47,9.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1358,515,51,53.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1359,515,56,38.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1360,516,21,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1361,516,22,21.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1362,516,24,4.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1363,517,3,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1364,517,39,18.00,130);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1365,518,65,21.05,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1366,519,2,19.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1367,519,7,30.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1368,519,68,12.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1369,520,42,14.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1370,521,22,21.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1371,521,31,12.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1372,521,60,34.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1373,521,71,21.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1374,522,41,9.65,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1375,522,52,7.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1376,522,61,28.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1377,522,62,49.30,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1378,523,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1379,524,71,21.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1380,525,29,123.79,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1381,525,59,55.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1382,526,17,39.00,33);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1383,526,31,12.50,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1384,526,75,7.75,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1385,527,31,12.50,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1386,527,66,17.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1387,528,10,31.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1388,528,67,14.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1389,529,31,12.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1390,529,42,14.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1391,529,45,9.50,27);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1392,529,51,53.00,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1393,530,42,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1394,531,41,9.65,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1395,532,16,17.45,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1396,532,62,49.30,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1397,533,70,15.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1398,533,77,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1399,534,54,7.45,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1400,534,56,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1401,534,74,10.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1402,535,31,12.50,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1403,536,31,12.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1404,536,38,263.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1405,537,36,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1406,537,39,18.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1407,537,72,34.80,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1408,538,10,31.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1409,538,75,7.75,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1410,539,8,40.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1411,539,30,25.89,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1412,539,75,7.75,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1413,540,2,19.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1414,540,29,123.79,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1415,541,19,9.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1416,541,75,7.75,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1417,542,18,62.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1418,542,35,18.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1419,542,63,43.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1420,542,68,12.50,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1421,543,7,30.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1422,543,56,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1423,544,29,123.79,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1424,544,41,9.65,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1425,545,2,19.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1426,545,54,7.45,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1427,545,68,12.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1428,546,41,9.65,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1429,546,52,7.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1430,547,14,23.25,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1431,547,54,7.45,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1432,548,16,17.45,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1433,548,17,39.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1434,549,26,31.23,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1435,549,44,19.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1436,549,64,33.25,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1437,549,69,36.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1438,550,11,21.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1439,551,62,49.30,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1440,551,72,34.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1441,552,13,6.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1442,552,24,4.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1443,552,59,55.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1444,553,11,21.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1445,553,51,53.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1446,553,54,7.45,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1447,554,17,39.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1448,554,29,123.79,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1449,555,30,25.89,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1450,555,51,53.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1451,555,55,24.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1452,555,62,49.30,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1453,556,19,9.20,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1454,556,25,14.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1455,556,59,55.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1456,557,10,31.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1457,557,28,45.60,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1458,557,49,20.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1459,558,34,14.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1460,558,38,263.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1461,559,2,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1462,559,65,21.05,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1463,559,74,10.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1464,560,40,18.40,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1465,561,56,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1466,561,76,18.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1467,562,52,7.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1468,563,13,6.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1469,563,25,14.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1470,563,70,15.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1471,564,19,9.20,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1472,564,23,9.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1473,564,40,18.40,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1474,565,31,12.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1475,565,72,34.80,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1476,565,77,13.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1477,566,2,19.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1478,566,46,12.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1479,567,41,9.65,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1480,567,43,46.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1481,567,48,12.75,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1482,567,61,28.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1483,568,33,2.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1484,569,38,263.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1485,569,62,49.30,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1486,570,26,31.23,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1487,570,38,263.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1488,570,40,18.40,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1489,570,62,49.30,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1490,571,32,32.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1491,571,41,9.65,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1492,572,43,46.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1493,572,75,7.75,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1494,573,56,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1495,574,35,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1496,574,51,53.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1497,575,62,49.30,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1498,575,70,15.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1499,576,11,21.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1500,576,57,19.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1501,576,59,55.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1502,576,77,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1503,577,41,9.65,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1504,577,70,15.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1505,578,26,31.23,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1506,578,53,32.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1507,579,31,12.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1508,579,57,19.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1509,580,10,31.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1510,580,39,18.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1511,581,20,81.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1512,581,38,263.50,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1513,582,2,19.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1514,582,8,40.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1515,582,13,6.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1516,582,60,34.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1517,583,6,25.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1518,583,39,18.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1519,583,60,34.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1520,583,68,12.50,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1521,584,19,9.20,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1522,584,35,18.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1523,584,38,263.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1524,584,43,46.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1525,585,13,6.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1526,585,25,14.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1527,585,44,19.45,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1528,585,64,33.25,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1529,586,7,30.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1530,586,31,12.50,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1531,586,53,32.80,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1532,587,29,123.79,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1533,587,30,25.89,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1534,588,59,55.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1535,588,77,13.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1536,589,22,21.00,52);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1537,589,35,18.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1538,589,57,19.50,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1539,589,60,34.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1540,589,64,33.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1541,590,13,6.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1542,590,40,18.40,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1543,590,47,9.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1544,590,76,18.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1545,591,1,18.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1546,591,18,62.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1547,591,36,19.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1548,592,58,13.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1549,592,72,34.80,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1550,593,25,14.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1551,593,39,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1552,594,10,31.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1553,594,56,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1554,594,59,55.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1555,594,77,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1556,595,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1557,595,43,46.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1558,595,68,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1559,595,70,15.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1560,596,51,53.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1561,597,22,21.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1562,598,23,9.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1563,598,35,18.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1564,598,42,14.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1565,598,58,13.25,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1566,598,64,33.25,48);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1567,599,4,22.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1568,599,70,15.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1569,599,74,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1570,600,1,18.00,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1571,600,19,9.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1572,600,37,26.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1573,600,45,9.50,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1574,600,60,34.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1575,600,71,21.50,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1576,601,5,21.35,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1577,601,9,97.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1578,602,3,10.00,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1579,602,26,31.23,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1580,603,25,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1581,603,33,2.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1582,603,70,15.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1583,604,2,19.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1584,604,25,14.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1585,604,57,19.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1586,604,59,55.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1587,605,2,19.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1588,605,17,39.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1589,605,62,49.30,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1590,606,18,62.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1591,607,10,31.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1592,607,13,6.00,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1593,608,16,17.45,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1594,608,31,12.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1595,608,56,38.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1596,608,65,21.05,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1597,609,2,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1598,609,42,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1599,610,3,10.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1600,610,26,31.23,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1601,610,29,123.79,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1602,611,7,30.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1603,611,27,43.90,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1604,611,70,15.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1605,612,24,4.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1606,612,54,7.45,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1607,612,64,33.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1608,613,51,53.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1609,613,76,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1610,614,17,39.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1611,614,18,62.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1612,614,21,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1613,614,33,2.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1614,614,62,49.30,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1615,615,11,21.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1616,615,52,7.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1617,616,1,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1618,616,58,13.25,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1619,617,35,18.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1620,617,67,14.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1621,618,38,263.50,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1622,618,39,18.00,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1623,619,2,19.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1624,619,24,4.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1625,619,30,25.89,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1626,620,53,32.80,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1627,621,26,31.23,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1628,621,35,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1629,621,49,20.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1630,622,1,18.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1631,622,11,21.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1632,622,23,9.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1633,622,68,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1634,623,35,18.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1635,623,51,53.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1636,624,6,25.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1637,624,16,17.45,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1638,624,17,39.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1639,625,55,24.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1640,625,62,49.30,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1641,625,64,33.25,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1642,625,65,21.05,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1643,626,21,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1644,626,28,45.60,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1645,627,10,31.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1646,628,19,9.20,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1647,628,47,9.50,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1648,628,49,20.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1649,629,46,12.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1650,629,64,33.25,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1651,630,16,17.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1652,630,18,62.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1653,631,20,81.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1654,632,40,18.40,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1655,632,65,21.05,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1656,632,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1657,633,23,9.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1658,633,61,28.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1659,633,70,15.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1660,634,73,15.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1661,635,42,14.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1662,635,49,20.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1663,635,54,7.45,32);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1664,636,24,4.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1665,637,21,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1666,637,56,38.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1667,637,65,21.05,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1668,638,2,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1669,638,24,4.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1670,638,70,15.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1671,638,77,13.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1672,639,10,31.00,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1673,639,31,12.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1674,639,77,13.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1675,640,25,14.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1676,641,2,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1677,641,68,12.50,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1678,642,11,21.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1679,642,38,263.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1680,643,17,39.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1681,643,34,14.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1682,643,41,9.65,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1683,644,30,25.89,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1684,645,59,55.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1685,646,8,40.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1686,646,24,4.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1687,646,29,123.79,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1688,646,30,25.89,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1689,646,36,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1690,647,13,6.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1691,647,69,36.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1692,647,75,7.75,120);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1693,648,24,4.50,110);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1694,648,39,18.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1695,648,40,18.40,91);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1696,648,60,34.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1697,649,45,9.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1698,649,56,38.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1699,650,29,123.79,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1700,650,30,25.89,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1701,651,13,6.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1702,652,39,18.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1703,653,70,15.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1704,654,41,9.65,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1705,654,71,21.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1706,655,55,24.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1707,655,62,49.30,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1708,656,13,6.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1709,656,65,21.05,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1710,656,68,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1711,657,58,13.25,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1712,657,62,49.30,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1713,658,1,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1714,659,61,28.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1715,660,75,7.75,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1716,661,7,30.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1717,661,52,7.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1718,662,7,30.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1719,662,16,17.45,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1720,662,41,9.65,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1721,663,19,9.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1722,663,49,20.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1723,663,61,28.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1724,664,1,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1725,664,17,39.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1726,664,67,14.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1727,665,11,21.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1728,665,29,123.79,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1729,666,4,22.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1730,666,33,2.50,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1731,666,58,13.25,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1732,667,71,21.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1733,668,17,39.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1734,668,33,2.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1735,668,54,7.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1736,669,16,17.45,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1737,669,32,32.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1738,669,57,19.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1739,670,30,25.89,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1740,670,60,34.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1741,671,1,18.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1742,671,60,34.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1743,672,16,17.45,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1744,672,25,14.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1745,672,40,18.40,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1746,673,50,16.25,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1747,674,35,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1748,674,63,43.90,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1749,675,17,39.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1750,675,24,4.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1751,676,42,14.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1752,676,43,46.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1753,676,67,14.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1754,677,10,31.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1755,677,28,45.60,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1756,677,75,7.75,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1757,678,36,19.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1758,678,52,7.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1759,679,11,21.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1760,679,13,6.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1761,679,19,9.20,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1762,679,72,34.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1763,680,20,81.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1764,680,52,7.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1765,680,76,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1766,681,47,9.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1767,681,76,18.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1768,682,21,10.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1769,682,75,7.75,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1770,682,77,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1771,683,21,10.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1772,683,27,43.90,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1773,683,55,24.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1774,683,58,13.25,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1775,684,13,6.00,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1776,684,57,19.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1777,685,16,17.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1778,685,62,49.30,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1779,685,72,34.80,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1780,685,75,7.75,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1781,686,53,32.80,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1782,686,61,28.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1783,687,6,25.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1784,688,1,18.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1785,688,18,62.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1786,688,23,9.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1787,689,36,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1788,690,28,45.60,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1789,690,34,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1790,691,13,6.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1791,691,43,46.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1792,691,60,34.00,49);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1793,691,71,21.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1794,692,2,19.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1795,692,67,14.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1796,693,7,30.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1797,693,13,6.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1798,694,31,12.50,44);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1799,694,62,49.30,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1800,694,68,12.50,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1801,694,72,34.80,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1802,695,49,20.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1803,696,13,6.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1804,696,22,21.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1805,696,46,12.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1806,697,11,21.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1807,697,44,19.45,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1808,697,56,38.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1809,698,13,6.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1810,698,31,12.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1811,699,10,31.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1812,699,24,4.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1813,699,77,13.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1814,700,59,55.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1815,701,50,16.25,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1816,701,51,53.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1817,701,55,24.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1818,702,6,25.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1819,702,10,31.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1820,702,17,39.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1821,702,62,49.30,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1822,703,4,22.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1823,704,33,2.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1824,704,41,9.65,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1825,704,75,7.75,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1826,705,6,25.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1827,705,28,45.60,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1828,706,20,81.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1829,706,31,12.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1830,707,16,17.45,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1831,707,31,12.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1832,707,45,9.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1833,707,60,34.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1834,708,75,7.75,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1835,709,21,10.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1836,709,47,9.50,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1837,709,51,53.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1838,710,30,25.89,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1839,710,35,18.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1840,710,64,33.25,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1841,711,5,21.35,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1842,711,7,30.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1843,711,72,34.80,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1844,712,75,7.75,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1845,713,24,4.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1846,713,41,9.65,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1847,714,52,7.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1848,714,76,18.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1849,715,7,30.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1850,715,13,6.00,77);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1851,715,53,32.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1852,715,69,36.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1853,715,76,18.00,44);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1854,716,60,34.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1855,717,18,62.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1856,717,38,263.50,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1857,717,69,36.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1858,718,51,53.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1859,719,37,26.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1860,719,56,38.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1861,719,62,49.30,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1862,720,19,9.20,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1863,720,49,20.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1864,721,12,38.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1865,721,24,4.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1866,721,64,33.25,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1867,722,46,12.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1868,723,52,7.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1869,724,29,123.79,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1870,725,17,39.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1871,725,33,2.50,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1872,726,26,31.23,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1873,726,41,9.65,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1874,726,75,7.75,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1875,727,63,43.90,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1876,728,8,40.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1877,728,75,7.75,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1878,729,28,45.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1879,730,39,18.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1880,730,47,9.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1881,730,51,53.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1882,730,63,43.90,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1883,731,8,40.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1884,731,21,10.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1885,731,40,18.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1886,731,44,19.45,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1887,732,7,30.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1888,732,12,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1889,732,24,4.50,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1890,732,27,43.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1891,732,31,12.50,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1892,732,63,43.90,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1893,733,75,7.75,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1894,734,38,263.50,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1895,735,7,30.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1896,735,43,46.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1897,736,13,6.00,84);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1898,736,57,19.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1899,737,16,17.45,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1900,737,24,4.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1901,737,36,19.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1902,738,16,17.45,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1903,738,18,62.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1904,738,32,32.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1905,739,11,21.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1906,739,20,81.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1907,739,76,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1908,739,77,13.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1909,740,7,30.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1910,740,43,46.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1911,740,72,34.80,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1912,741,7,30.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1913,741,62,49.30,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1914,742,6,25.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1915,742,11,21.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1916,742,41,9.65,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1917,743,21,10.00,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1918,743,34,14.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1919,743,55,24.00,65);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1920,743,61,28.50,66);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1921,744,2,19.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1922,744,70,15.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1923,744,76,18.00,90);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1924,745,72,34.80,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1925,746,29,123.79,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1926,746,41,9.65,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1927,747,59,55.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1928,748,51,53.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1929,748,60,34.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1930,749,42,14.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1931,750,32,32.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1932,750,46,12.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1933,750,52,7.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1934,751,24,4.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1935,751,61,28.50,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1936,751,74,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1937,751,75,7.75,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1938,752,41,9.65,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1939,752,51,53.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1940,752,77,13.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1941,753,4,22.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1942,753,24,4.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1943,753,77,13.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1944,754,7,30.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1945,754,22,21.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1946,754,46,12.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1947,754,55,24.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1948,755,13,6.00,56);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1949,755,35,18.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1950,755,42,14.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1951,755,55,24.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1952,756,1,18.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1953,756,40,18.40,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1954,756,52,7.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1955,757,26,31.23,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1956,757,76,18.00,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1957,758,1,18.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1958,758,59,55.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1959,759,1,18.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1960,759,29,123.79,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1961,760,8,40.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1962,760,29,123.79,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1963,760,42,14.00,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1964,761,28,45.60,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1965,761,34,14.00,90);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1966,761,71,21.50,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1967,762,24,4.50,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1968,762,36,19.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1969,762,60,34.00,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1970,763,7,30.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1971,763,24,4.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1972,764,58,13.25,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1973,764,71,21.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1974,765,19,9.20,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1975,765,60,34.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1976,765,71,21.50,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1977,766,23,9.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1978,766,42,14.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1979,766,45,9.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1980,766,68,12.50,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1981,767,41,9.65,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1982,768,30,25.89,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1983,768,77,13.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1984,769,31,12.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1985,769,36,19.00,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1986,770,3,10.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1987,770,59,55.00,110);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1988,770,70,15.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1989,771,12,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1990,771,18,62.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1991,771,56,38.00,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1992,772,46,12.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1993,772,49,20.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1994,773,10,31.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1995,774,2,19.00,11);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1996,774,20,81.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1997,774,26,31.23,63);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1998,774,51,53.00,44);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(1999,774,72,34.80,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2000,775,19,9.20,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2001,775,69,36.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2002,776,7,30.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2003,776,43,46.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2004,777,26,31.23,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2005,777,33,2.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2006,777,65,21.05,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2007,777,71,21.50,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2008,778,1,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2009,778,13,6.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2010,779,18,62.50,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2011,779,51,53.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2012,780,24,4.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2013,780,62,49.30,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2014,781,55,24.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2015,781,59,55.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2016,782,56,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2017,782,63,43.90,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2018,783,2,19.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2019,783,5,21.35,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2020,783,29,123.79,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2021,783,59,55.00,100);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2022,784,1,18.00,45);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2023,784,13,6.00,80);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2024,784,24,4.50,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2025,784,64,33.25,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2026,784,71,21.50,16);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2027,785,36,19.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2028,785,38,263.50,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2029,785,59,55.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2030,786,53,32.80,70);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2031,786,69,36.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2032,787,21,10.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2033,787,44,19.45,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2034,787,61,28.50,6);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2035,788,1,18.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2036,788,35,18.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2037,788,42,14.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2038,788,54,7.45,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2039,789,13,6.00,7);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2040,789,59,55.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2041,790,70,15.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2042,791,40,18.40,5);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2043,791,52,7.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2044,791,71,21.50,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2045,792,28,45.60,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2046,792,35,18.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2047,792,49,20.00,60);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2048,792,57,19.50,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2049,793,21,10.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2050,794,2,19.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2051,794,63,43.90,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2052,795,44,19.45,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2053,795,61,28.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2054,796,11,21.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2055,797,62,49.30,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2056,798,33,2.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2057,798,51,53.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2058,799,12,38.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2059,799,32,32.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2060,799,35,18.00,18);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2061,800,1,18.00,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2062,800,5,21.35,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2063,801,68,12.50,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2064,802,2,19.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2065,802,12,38.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2066,803,76,18.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2067,804,24,4.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2068,805,43,46.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2069,805,61,28.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2070,806,18,62.50,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2071,806,32,32.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2072,806,64,33.25,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2073,807,33,2.50,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2074,807,67,14.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2075,808,24,4.50,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2076,808,25,14.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2077,808,51,53.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2078,808,57,19.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2079,809,7,30.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2080,809,55,24.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2081,809,60,34.00,50);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2082,810,70,15.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2083,811,21,10.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2084,811,60,34.00,21);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2085,811,61,28.50,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2086,812,13,6.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2087,812,17,39.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2088,812,60,34.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2089,813,60,34.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2090,813,77,13.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2091,814,60,34.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2092,815,53,32.80,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2093,815,70,15.00,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2094,816,34,14.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2095,816,40,18.40,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2096,816,41,9.65,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2097,817,17,39.00,77);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2098,817,41,9.65,12);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2099,817,53,32.80,25);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2100,817,55,24.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2101,817,68,12.50,55);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2102,818,30,25.89,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2103,818,54,7.45,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2104,819,16,17.45,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2105,819,19,9.20,42);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2106,819,34,14.00,35);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2107,820,41,9.65,9);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2108,821,28,45.60,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2109,821,43,46.00,36);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2110,821,77,13.00,28);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2111,822,39,18.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2112,823,1,18.00,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2113,823,2,19.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2114,823,16,17.45,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2115,823,31,12.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2116,824,7,30.00,15);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2117,824,13,6.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2118,825,2,19.00,8);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2119,825,41,9.65,40);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2120,825,50,16.25,22);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2121,825,64,33.25,130);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2122,826,11,21.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2123,826,24,4.50,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2124,827,16,17.45,14);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2125,828,2,19.00,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2126,828,46,12.00,30);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2127,828,76,18.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2128,829,6,25.00,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2129,829,14,23.25,20);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2130,829,19,9.20,10);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2131,830,2,19.00,24);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2132,830,3,10.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2133,830,4,22.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2134,830,6,25.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2135,830,7,30.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2136,830,8,40.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2137,830,10,31.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2138,830,12,38.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2139,830,13,6.00,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2140,830,14,23.25,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2141,830,16,17.45,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2142,830,20,81.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2143,830,23,9.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2144,830,32,32.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2145,830,39,18.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2146,830,41,9.65,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2147,830,46,12.00,3);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2148,830,52,7.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2149,830,55,24.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2150,830,60,34.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2151,830,64,33.25,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2152,830,66,17.00,1);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2153,830,73,15.00,2);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2154,830,75,7.75,4);
INSERT INTO Order_item (order_item_id, order_id, product_id, unitprice, quantity)VALUES(2155,830,77,13.00,2);