

CREATE TABLE Customer
(
  CustID INT NOT NULL,
  FirstName VARCHAR(25) NOT NULL,
  LastName VARCHAR(25) NOT NULL,
  CustGender VARCHAR(25) NOT NULL,
  CustAddress VARCHAR(25) NOT NULL,
  CustEmail VARCHAR(25) NOT NULL,
  PRIMARY KEY (CustID)
);

CREATE TABLE PlaceLocated
(
  PlaceID INT NOT NULL,
  PlaceName VARCHAR(25) NOT NULL,
  PRIMARY KEY (PlaceID)
);

CREATE TABLE Business
(
  BussId INT NOT NULL,
  BussName VARCHAR(25) NOT NULL,
  PlaceID INT NOT NULL,
  PRIMARY KEY (BussId),
  FOREIGN KEY (PlaceID) REFERENCES PlaceLocated(PlaceID)
);

CREATE TABLE Promovation
(
  PromoID INT NOT NULL,
  PromoDescription VARCHAR(75) NOT NULL,
  PromoDate VARCHAR(25) NOT NULL,
  BussId INT NOT NULL,
  PRIMARY KEY (PromoID),
  FOREIGN KEY (BussId) REFERENCES Business(BussId)
);

CREATE TABLE ServicePurchased
(
  ServiceID INT NOT NULL,
  ServiceDescripti VARCHAR(75) NOT NULL,
  CustID INT NOT NULL,
  BussId INT NOT NULL,
  PRIMARY KEY (ServiceID),
  FOREIGN KEY (CustID) REFERENCES Customer(CustID),
  FOREIGN KEY (BussId) REFERENCES Business(BussId)
);

CREATE TABLE Planner
(
  PlannerID INT NOT NULL,
  PlannerFName VARCHAR(25) NOT NULL,
  PlannerLName VARCHAR(25) NOT NULL,
  PlannerEmail VARCHAR(25) NOT NULL,
  PRIMARY KEY (PlannerID)
);

CREATE TABLE Payment
(
  PaymentID INT NOT NULL,
  PaymentDesrptn VARCHAR(25) NOT NULL,
  PaymentDate VARCHAR(25) NOT NULL,
  PaymentPrice INT NOT NULL,
  BussId INT NOT NULL,
  CustID INT NOT NULL,
  PRIMARY KEY (PaymentID),
  FOREIGN KEY (BussId) REFERENCES Business(BussId),
  FOREIGN KEY (CustID) REFERENCES Customer(CustID)
);

CREATE TABLE Advise
(
  CustID INT NOT NULL,
  PlannerID INT NOT NULL,
  PRIMARY KEY (CustID, PlannerID),
  FOREIGN KEY (CustID) REFERENCES Customer(CustID),
  FOREIGN KEY (PlannerID) REFERENCES Planner(PlannerID)
);

CREATE TABLE CustPhoneNR
(
  CustPhoneNR VARCHAR(25) NOT NULL,
  CustID INT NOT NULL,
  PRIMARY KEY (CustPhoneNR, CustID),
  FOREIGN KEY (CustID) REFERENCES Customer(CustID)
);

CREATE TABLE PlannerPhoneNR
(
  PlannerPhoneNR VARCHAR(25) NOT NULL,
  PlannerID INT NOT NULL,
  PRIMARY KEY (PlannerPhoneNR, PlannerID),
  FOREIGN KEY (PlannerID) REFERENCES Planner(PlannerID)
);


INSERT INTO Customer VALUES (1,"harry","Shultz","male","Thoma Nashi","hf@gmail.com");
INSERT INTO Customer VALUES (2,"kims","witz","female","Street Whitss","kw@gmail.com");
INSERT INTO Customer VALUES (3,"Tom","Mikk","male","Street  Ilia","tm@gmail.com");
INSERT INTO Customer VALUES (4,"Alima","Woodward","female","Neigborhood 1","aw@gmail.com");
INSERT INTO Customer VALUES (5,"Kathlen","Ali","female","Neighboorhud 14", "ka@gmail.com");
INSERT INTO Customer VALUES (6,"Edgar","Allman","male","Neighboorhud 7","ea@gmail.com");
INSERT INTO Customer VALUES (7,"Thea","Barnard","female","Neighboorhud 5","tb@gmail.com");
INSERT INTO Customer VALUES (8,"Eadie","Connelly","male","neighboorhood 8","ec@gmail.com");
INSERT INTO Customer VALUES (9,"Marko","Bratko","male","neighboorhood 6","mb@gmail.com");
INSERT INTO Customer VALUES (10,"Kristjan","Malo","male","Neighboorhood 9","km@gmail.com");
INSERT INTO Customer VALUES (11,"Maria","Hoxha","female","Thoma Nashi","mh@gmail.com");



INSERT INTO Planner VALUES (41,"Melsjon","Sinani","ms@gmail.com");
INSERT INTO Planner VALUES (42,"Klajdi","Prifti","kp@gmail.com");
INSERT INTO Planner VALUES (43,"Endri","Cela","ec@gmail.com");
INSERT INTO Planner VALUES (44,"Kristjana","Abazi","ka@gmail.com");
INSERT INTO Planner VALUES (45,"Tanja","Gjika","tg@gmail.com");
INSERT INTO Planner VALUES (46,"Henri","Kraja","hk@gmail.com"); 
INSERT INTO Planner VALUES (47,"Ildi","Murati","im@gmail.com"); 
INSERT INTO Planner VALUES (48,"Helena","Muco","hm@gmail.com");
INSERT INTO Planner VALUES (49,"Klerisa","Bushati","kb@gmail.com");
INSERT INTO Planner VALUES (50,"Melsjon","Kanani","mk@gmail.com");


INSERT into PlaceLocated VALUES (1,"Korca");
INSERT into PlaceLocated VALUES(2,"Tirana"); 
INSERT into PlaceLocated VALUES(3,"Durresi"); 
INSERT into PlaceLocated VALUES(4,"Saranda"); 
INSERT into PlaceLocated VALUES(5,"Vlora"); 
INSERT into PlaceLocated VALUES(6,"Fieri"); 
INSERT into PlaceLocated VALUES(7,"Pogradeci"); 
INSERT into PlaceLocated VALUES(8,"Elbasan");
INSERT into PlaceLocated VALUES(9,"Selanik");
INSERT into PlaceLocated VALUES(10,"Kukes");



INSERT INTO PlannerPhoneNR VALUES ("069 21 54 879",41);
INSERT INTO PlannerPhoneNR VALUES ("068 45 78 145",42);
INSERT INTO PlannerPhoneNR VALUES ("067 64 78 157",43);
INSERT INTO PlannerPhoneNR VALUES ("068 32 78 541",44);
INSERT INTO PlannerPhoneNR VALUES ("069 68 12 784",45);
INSERT INTO PlannerPhoneNR VALUES ("067 12 56 652",46);
INSERT INTO PlannerPhoneNR VALUES ("068 56 87 213",47);
INSERT INTO PlannerPhoneNR VALUES ("068 78 98 123",48);
INSERT INTO PlannerPhoneNR VALUES ("069 98 12 974",49);
INSERT INTO PlannerPhoneNR VALUES ("067 68 98 214",50);


INSERT INTO CustPhoneNR VALUES ("068 06 20 031",1);
INSERT INTO CustPhoneNR VALUES ("068 00 25 010",2);
INSERT INTO CustPhoneNR VALUES ("069 98 12 134",3);
INSERT INTO CustPhoneNR VALUES ("069 76 86 979",4);
INSERT INTO CustPhoneNR VALUES ("069 68 12 784",5);
INSERT INTO CustPhoneNR VALUES ("068 74 66 607",6);
INSERT INTO CustPhoneNR VALUES ("069 83 19 410",7);
INSERT INTO CustPhoneNR VALUES ("068 02 68 475",8);
INSERT INTO CustPhoneNR VALUES ("069 71 13 270",9);
INSERT INTO CustPhoneNR VALUES ("067 63 68 841",10);
INSERT INTO CustPhoneNR VALUES ("069 68 66 011",11);



INSERT into Business values (20,"Hera Photography",2);
INSERT into Business values (11,"Klajd Fer Wedding venue",7);
INSERT into Business values (12,"NikoDJ",1);
INSERT into Business values (13,"Viola Natural Flowes",1);
INSERT into Business values (14,"Studio Igli",2);
INSERT into Business values (15,"Olympus Palace",6);
INSERT into Business values (16,"Bleta Photography",5);
INSERT into Business values (17,"Ari Wedding Resort",4);
INSERT into Business values (18,"Iliria Wedding palace",3);
INSERT into Business values (19,"Denis DJ",8);
INSERT into Business values (21,"Nuovelle Restorant",9);
INSERT into Business values (22,"Mark Wedding Company",10);


INSERT into Promovation VALUES (101,"Photos of the restaurants and the menu","4.06.2019",11);
INSERT into Promovation VALUES(102,"A remix made of 100 wedding songs","10.07.2021",12);
INSERT into Promovation VALUES(103,"Photos of some events that Viola' Flowers partecipated","08.02.2020",13);
INSERT into Promovation VALUES(104,"A 30 minutes Wedding clip filmed in BUDVA","10.09.2021",14);
INSERT into Promovation VALUES(105,"Some of the best moments of all weddings in this palace","09.05.2021",15);
INSERT into Promovation VALUES(106,"A set of photos from the wedding of an albanian celebrity","06.08.2019",16);
INSERT into Promovation VALUES(107,"A promovation video realised in 2021","14.11.2021",17);
INSERT into Promovation VALUES(108,"Some photos from the hotel and restaurant","11.12.2019",18);
INSERT into Promovation VALUES(109,"A Wedding remix ","1.06.2018",19);
INSERT into Promovation VALUES(110,"A promovation video for the restaurant , hotel and the pool","1.08.2019",21);
INSERT into Promovation VALUES(111,"Photo shoot and a Wedding clip made in Theth ,Albania","1.08.2019",22);




INSERT into  Advise VALUES (1,41);
INSERT into  Advise VALUES (2,44);
INSERT into  Advise VALUES (3,46);
INSERT into  Advise VALUES (4,47);
INSERT into  Advise VALUES (5,49);
INSERT into  Advise VALUES (6,50);
INSERT into  Advise VALUES (7,45);
INSERT into  Advise VALUES (8,43);
INSERT into  Advise VALUES (9,42);
INSERT into  Advise VALUES (10,47);
INSERT into  Advise VALUES (11,48);



INSERT INTO ServicePurchased VALUES (1001,"Photographer Booked",1,20);
INSERT INTO ServicePurchased VALUES (1002,"A wedding DJ",2,19);
INSERT INTO ServicePurchased VALUES (1003,"A wedding Resort is booked",3,15);
INSERT INTO ServicePurchased VALUES (1004,"Some Flowers",4,13);
INSERT INTO ServicePurchased VALUES (1005,"A full package for photos and videos",5,22);
INSERT INTO ServicePurchased VALUES (1006,"A dj for a party in Tirana",6,12);
INSERT INTO ServicePurchased VALUES (1007,"A wedding resort in Pogradec",7,11);
INSERT INTO ServicePurchased VALUES (1008,"A Restaurant for a birthday in Thesaloniki",8,21);
INSERT INTO ServicePurchased VALUES (1009,"A singer booked a fiming company for recording a song",9,14);
INSERT INTO ServicePurchased VALUES (1010,"Photographer Booked in vlora",10,16);
INSERT INTO ServicePurchased VALUES (1011,"A wedding resort in Durres",11,18);



INSERT INTO Payment VALUES(2000,"Paypal Method","20.10.2020",600,20,1);
INSERT INTO Payment VALUES(2001,"EasyPay Method","18.8.2021",400,19,2);
INSERT INTO Payment VALUES(2002,"MoneyGram Method","16.4.2021",5000,15,3);
INSERT INTO Payment VALUES(2003,"WesternUnion Method","10.1.2021",200,13,4);
INSERT INTO Payment VALUES(2004,"EasyPay Method","25.12.2021",1200,22,5);
INSERT INTO Payment VALUES(2005,"MoneyGram Method","13.09.2021",350,12,6);
INSERT INTO Payment VALUES(2006,"WesternUnion Method","18.12.2021",6000,11,7);
INSERT INTO Payment VALUES(2007,"EasyPay Method","14.06.2021",3000,21,8);
INSERT INTO Payment VALUES(2008,"MoneyGram Method","17.09.2020",550,14,9);
INSERT INTO Payment VALUES(2009,"Paypal Method","20.10.2020",400,16,10);
INSERT INTO Payment VALUES(2010,"WesternUnion Method","20.11.2021",8000,18,11);









SELECT ServicePurchased.servicedescripti , Customer.firstname, Customer.lastname,Payment.paymentdesrptn,Business.BussName,Payment.PaymentPrice
FROM Payment,ServicePurchased,Customer,Business
WHERE Payment.custid=Customer.CustID and Customer.custid=ServicePurchased.custid AND Payment.BussId=Business.bussid and Payment.paymentprice < (SELECT AVG(paymentprice) from Payment );




SELECT bussname,MIN(Payment.PaymentPrice) 
FROM Payment,Business
WHERE Business.BussName LIKE "%Wedding%" and Payment.BussId = Business.BussId;




SELECT  paymentdesrptn , SUM(Payment.PaymentPrice)
FROM Payment
GROUP BY paymentdesrptn;




SELECT c.custid , c.firstname  as customerFirstName, c.lastname as customerLastName , p.PlannerFName as plannerFirstName, p.PlannerLName as plannerLastName
from Customer as c, Planner as p ,Advise AS a 
WHERE c.custid = a.CustID  and a.PlannerID = p.PlannerID;





SELECT Business.BussName , Customer.FirstName AS CustomerFirstName , Customer.LastName As CustomerLastName , Payment.PaymentPrice, Payment.PaymentDate
from Business, Customer,Payment
WHERE Business.BussId = Payment.BussId AND Payment.CustID = Customer.CustID AND Payment.PaymentPrice = (SELECT MAX(Payment.PaymentPrice) from Payment);



SELECT b.BussName, s.ServiceDescripti,pay.PaymentPrice
FROM Business as b,PlaceLocated as p,ServicePurchased as s, Payment as pay
WHERE p.placename ="Korca" and b.PlaceID= p.PlaceID and s.bussid= b.bussid and b.bussid=pay.bussid;



SELECT c.CustID , c.FirstName , c.LastName,c.CustGender , c.CustAddress , c.CustEmail , cph.CustPhoneNR
from CustPhoneNR as cph,Customer as c
WHERE cph.CustID=c.custid and cph.CustPhoneNR LIKE "069%";





SELECT b.BussName , s.ServiceDescripti , p.PaymentPrice
From Business as b, ServicePurchased as s , Payment as p
where p.paymentprice < 500 and b.BussName LIKE "%DJ%" AND s.BussId = b.BussId AND b.BussId = p.BussId;



SELECT b.bussid , b.bussname , p.placename , pr.promodescription
from Business as b, PlaceLocated as p, Promovation as pr 
WHERE b.placeid = p.placeid and b.bussid = pr.bussid and pr.promodescription LIKE "%photo%";


SELECT b.BussId, b.BussName ,p.PlaceName
FROM Business as b, PlaceLocated as p
where b.PlaceID = p.PlaceID
GROUP by b.BussId,b.BussName;


select p.PlannerID,p.PlannerFName , p.PlannerLName
from Planner as p
order by p.plannerfname , p.plannerlname ASC;





SELECT  c.custid, c.firstname, c.lastname, p.paymentdesrptn, b.bussname as busisesBooked
from Customer as c, Payment as p, Business as b
where c.custid = p.custid and p.bussid = b.bussid
order by b.bussname;






DROP TABLE ServicePurchased;
DROP TABLE Payment;
DROP TABLE Advise;
DROP TABLE Promovation;
DROP TABLE CustPhoneNR;
DROP TABLE PlannerPhoneNR;
DROP TABLE Business;
DROP TABLE Planner;
DROP TABLE PlaceLocated;
DROP TABLE Customer;



