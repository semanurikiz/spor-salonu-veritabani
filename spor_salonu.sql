create database sporsalonu;
create table Uyeler(
    UyeID int identity(1,1) primary key,
    Ad Nvarchar(50) not null,       
    Soyad Nvarchar(50) not null,      
    Telefon Nvarchar(15) not null,        
    Email Nvarchar(50) unique not null
);
alter table Uyeler
add DogumTarihi date not null;

create table Antrenorler (
    antrenorID int identity(1,1) primary key, 
    Ad Nvarchar(50) not null,                 
    Soyad Nvarchar(50) not null,             
    UzmanlikAlani Nvarchar(50) not null,             
    Telefon Nvarchar(15) not null,                    
    Email Nvarchar(50) unique not null               
);

create table dersler (
    dersID int identity(1,1) primary key,    
    dersadi nvarchar(50) not null,            
    derstarihi date not null,                 
    antrenorid int not null,                           
    katilimcisayisi int not null
	
);

create table rezervasyonlar (
    rezervasyonID int identity(1,1) primary key not null,  
    uyeID int not null,                                   
    dersID int not null,                                    
    rezervasyontarihi date not null,                    
    durum nvarchar(15) not null

);

create table OdemeBilgileri (
    odemeID int identity(1,1) primary key not null,    
    uyeID int not null,                                
    odemetarihi date not null,                          
    tutar decimal(10) not null,                       
    odemyontemi nvarchar(15) not null
	 
);

create table uyelikPlanlari (
    planID int identity(1,1) primary key not null,     
    planadi nvarchar(50) not null,                 
    sure int not null,                             
    fiyat decimal(10) not null,                     
    aciklama nvarchar(150) not null                     
);

create table kampanyalar (
    kampanyaID int identity(1,1) primary key not null,  
    kampanyaadi nvarchar(50) not null,                 
    baslangictarihi date not null,                      
    bitistarihi date not null,                         
    indirimorani decimal(5) not null                 
);

create table personel (
    personelID int identity(1,1) primary key not null,   
    ad nvarchar(50) not null,                        
    soyad nvarchar(50) not null,                      
    gorev nvarchar(50) not null,                        
    telefon nvarchar(15) not null                        
);
alter table personel
 add Email Nvarchar(50) unique not null;

create table uyelik_tarihcesi (
    tarihceID int identity(1,1) primary key not null,    
    uyeID int not null,                                  
    planID int not null,                                 
    baslangictarihi date not null,                        
    bitistarihi date not null
	 
);

create table antrenman_planlari (
    planID int identity(1,1) primary key not null,      
    uyeID int not null,                                 
    antrenorid int not null,                             
    baslangictarihi date not null,                      
    plandetaylari nvarchar(150) not null
);

create table ekipmanlar (
    ekipmanID int identity(1,1) primary key not null,   
    ekipmanadi nvarchar(50) not null,                   
    kullanimdurumu nvarchar(15) not null,              
    depolamakonumu nvarchar(50) not null                
);











