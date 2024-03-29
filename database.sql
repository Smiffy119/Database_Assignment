DROP DATABASE IF EXISTS assignment_2;
CREATE DATABASE IF NOT EXISTS assignment_2;
USE assignment_2;

CREATE TABLE IF NOT EXISTS Customers(
    Customer_Email varchar(40) NOT NULL PRIMARY KEY,
    Customer_FirstName varchar(20) NOT NULL,
    Customer_LastName varchar(20) NOT NULL)
    ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE IF NOT EXISTS Customer_Addresses(
    Customer_Email varchar(40) NOT NULL,
    House_No int(10) NOT NULL,
    City varchar(30)NOT NULL,
    Postcode varchar(10) NOT NULL,
    PRIMARY KEY (Customer_Email, Postcode),
    FOREIGN KEY (Customer_Email) REFERENCES Customers(Customer_Email))
    ENGINE=InnoDB DEFAULT CHARSET=latin1;
    

 CREATE TABLE IF NOT EXISTS Staff(
    Staff_Email varchar(40) NOT NULL PRIMARY KEY,
    Staff_FirstName varchar(20) NOT NULL,
    Staff_LastName varchar(20) NOT NULL)
    ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
 CREATE TABLE IF NOT EXISTS Services(
    Service_Name varchar(100) NOT NULL PRIMARY KEY,
    Service_Description varchar(255) NOT NULL,
    Service_Price int(5) NOT NULL)
    ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS Orders(
    Customer_Email varchar(50) NOT NULL,
    Order_Date_Time DATETIME NOT NULL UNIQUE,
    Staff_Email varchar(50) NOT NULL,
    PRIMARY KEY (Customer_Email, Order_Date_Time),
    FOREIGN KEY (Customer_Email) REFERENCES Customers(Customer_Email),
    FOREIGN KEY (Staff_Email) REFERENCES Staff(Staff_Email))
    ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE IF NOT EXISTS Order_Details(
    Customer_Email varchar(50) NOT NULL,
    Order_Date_Time DATETIME NOT NULL,
    Service_Name varchar(100) NOT NULL,
    Service_Ordered_Price int(5) NOT NULL, 
    Discount int(10) DEFAULT NULL, 
    Quantity int(5) NOT NULL,
    PRIMARY KEY (Customer_Email, Order_Date_Time, Service_Name),
    FOREIGN KEY (Customer_Email) REFERENCES Customers(Customer_Email),
    FOREIGN KEY (Order_Date_Time) REFERENCES Orders(Order_Date_Time),
    FOREIGN KEY (Service_Name) REFERENCES Services(Service_Name))
    ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
ALTER TABLE customers ADD Customer_MiddleName varchar(30) NOT NULL;

ALTER TABLE customers DROP Customer_MiddleName;

INSERT INTO customers (Customer_Email, Customer_FirstName, Customer_LastName) VALUES ('quentinturnbull@gmail.com', 'Quentin', 'Turnbull'), ('sonjarowlinson@gmail.com', 'Sonja', 'Rowlinson'), ('marrislinford@gmail.com', 'Marris', 'Linford'), ('minervawrench@gmail.com', 'Minerva', 'Wrench'), ('laraineemms@gmail.com', 'Laraine', 'Emms'), ('lavenastrange@gmail.com', 'Lavena', 'Strange'), ('kittykirwan@gmail.com', 'Kitty', 'Kirwan'), ('gretejasper@gmail.com', 'Grete', 'Jasper'), ('chantalo hara@gmail.com', 'Chantal', 'O hara'), ('debibland@gmail.com', 'Debi', 'Bland'), ('anabalwithers@gmail.com', 'Anabal', 'Withers'), ('doralynneflaxman@gmail.com', 'Doralynne', 'Flaxman'), ('chiarraconnolly@gmail.com', 'Chiarra', 'Connolly'), ('allsunmackie@gmail.com', 'Allsun', 'Mackie'), ('beverietips@gmail.com', 'Beverie', 'Tips'), ('estherdodd@gmail.com', 'Esther', 'Dodd'), ('euphemiacharles@gmail.com', 'Euphemia', 'Charles'), ('othatoomer@gmail.com', 'Otha', 'Toomer'), ('margerycallow@gmail.com', 'Margery', 'Callow'), ('kerianndenham@gmail.com', 'Keriann', 'Denham'), ('michalreygan@gmail.com', 'Michal', 'Reygan'), ('marybellekacy@gmail.com', 'Marybelle', 'Kacy'), ('martileroy@gmail.com', 'Marti', 'Leroy'), ('holly-annetell@gmail.com', 'Holly-Anne', 'Tell'), ('agkayes@gmail.com', 'Ag', 'Kayes'), ('morganbinnington@gmail.com', 'Morgan', 'Binnington'), ('dioneaitchison@gmail.com', 'Dione', 'Aitchison'), ('samariastamp@gmail.com', 'Samaria', 'Stamp'), ('doroteyaholl@gmail.com', 'Doroteya', 'Holl'), ('bryanalovegrove@gmail.com', 'Bryana', 'Lovegrove'), ('soniadougherty@gmail.com', 'Sonia', 'Dougherty'), ('bonnibellerowlands@gmail.com', 'Bonnibelle', 'Rowlands'), ('norinacousins@gmail.com', 'Norina', 'Cousins'), ('marrissapeach@gmail.com', 'Marrissa', 'Peach'), ('corettaramm@gmail.com', 'Coretta', 'Ramm'), ('rowenahinton@gmail.com', 'Rowena', 'Hinton'), ('britteshanks@gmail.com', 'Britte', 'Shanks'), ('elbertinawadham@gmail.com', 'Elbertina', 'Wadham'), ('mabeloconnell@gmail.com', 'Mabel', 'Oconnell'), ('mandaknighton@gmail.com', 'Manda', 'Knighton'), ('mariceaston@gmail.com', 'Marice', 'Aston'), ('petroniaravenscroft@gmail.com', 'Petronia', 'Ravenscroft'), ('desiraejakeman@gmail.com', 'Desirae', 'Jakeman'), ('nanondaniel@gmail.com', 'Nanon', 'Daniel'), ('mellieellis@gmail.com', 'Mellie', 'Ellis'), ('constantiafreeman@gmail.com', 'Constantia', 'Freeman'), ('korneypipe@gmail.com', 'Korney', 'Pipe'), ('trudismart@gmail.com', 'Trudi', 'Smart'), ('clohumphries@gmail.com', 'Clo', 'Humphries'), ('dosiredding@gmail.com', 'Dosi', 'Redding'), ('kaiabatchelor@gmail.com', 'Kaia', 'Batchelor'), ('andieread@gmail.com', 'Andie', 'Read'), ('sarenabaines@gmail.com', 'Sarena', 'Baines'), ('neiletomes@gmail.com', 'Neile', 'Tomes'), ('breanneo hare@gmail.com', 'Breanne', 'O hare'), ('ladonnawestwood@gmail.com', 'Ladonna', 'Westwood'), ('dorolisaoldroyd@gmail.com', 'Dorolisa', 'Oldroyd'), ('myrleneduke@gmail.com', 'Myrlene', 'Duke'), ('nettiellwood@gmail.com', 'Netti', 'Ellwood'), ('lindiehilton@gmail.com', 'Lindie', 'Hilton'), ('lesliewhitlock@gmail.com', 'Leslie', 'Whitlock'), ('yettakromberg@gmail.com', 'Yetta', 'Kromberg'), ('karonfowley@gmail.com', 'Karon', 'Fowley'), ('klarikapollock@gmail.com', 'Klarika', 'Pollock'), ('theresinaheneghan@gmail.com', 'Theresina', 'Heneghan'), ('erminakennett@gmail.com', 'Ermina', 'Kennett'), ('lonniranger@gmail.com', 'Lonni', 'Ranger'), ('jillielogan@gmail.com', 'Jillie', 'Logan'), ('reikocrown@gmail.com', 'Reiko', 'Crown'), ('christinamcdonagh@gmail.com', 'Christina', 'Mcdonagh'), ('virginiagilmore@gmail.com', 'Virginia', 'Gilmore'), ('babbieodam@gmail.com', 'Babbie', 'Odam'), ('rozalielawal@gmail.com', 'Rozalie', 'Lawal'), ('kelseyrushbrooke@gmail.com', 'Kelsey', 'Rushbrooke'), ('benedettaflaxman@gmail.com', 'Benedetta', 'Flaxman'), ('corabelgalvin@gmail.com', 'Corabel', 'Galvin'), ('patbray@gmail.com', 'Pat', 'Bray'), ('mernagibb@gmail.com', 'Merna', 'Gibb'), ('ardahadfield@gmail.com', 'Arda', 'Hadfield'), ('carleelangley@gmail.com', 'Carlee', 'Langley'), ('rianeo mahoney@gmail.com', 'Riane', 'O mahoney'), ('valmasilva@gmail.com', 'Valma', 'Silva'), ('roselinemcdougall@gmail.com', 'Roseline', 'Mcdougall'), ('yettajeffers@gmail.com', 'Yetta', 'Jeffers'), ('meadjackson@gmail.com', 'Mead', 'Jackson'), ('prudencemanning@gmail.com', 'Prudence', 'Manning'), ('dyannakensington@gmail.com', 'Dyanna', 'Kensington'), ('carolechild@gmail.com', 'Carole', 'Child'), ('pegeenestlick@gmail.com', 'Pegeen', 'Estlick'), ('margajarrold@gmail.com', 'Marga', 'Jarrold'), ('quinnholloway@gmail.com', 'Quinn', 'Holloway'), ('jerrilynglass@gmail.com', 'Jerrilyn', 'Glass'), ('leishastoddart@gmail.com', 'Leisha', 'Stoddart'), ('moragibbins@gmail.com', 'Mora', 'Gibbins'), ('jyotimistry@gmail.com', 'Jyoti', 'Mistry'), ('jerryleesanders@gmail.com', 'Jerrylee', 'Sanders'), ('stacipattison@gmail.com', 'Staci', 'Pattison'), ('melisandefosse@gmail.com', 'Melisande', 'Fosse'), ('georgiannasalisbury@gmail.com', 'Georgianna', 'Salisbury'), ('belitamarks@gmail.com', 'Belita', 'Marks'), ('dennitoland@gmail.com', 'Denni', 'Toland'), ('luellagascoyne@gmail.com', 'Luella', 'Gascoyne'), ('ezmeraldaneilson@gmail.com', 'Ezmeralda', 'Neilson'), ('kiahcarmichael@gmail.com', 'Kiah', 'Carmichael'), ('kelciepaskell@gmail.com', 'Kelcie', 'Paskell'), ('mayeluxton@gmail.com', 'Maye', 'Luxton'), ('chrissyantram@gmail.com', 'Chrissy', 'Antram'), ('erinnmoseley@gmail.com', 'Erinn', 'Moseley'), ('dottyludgrove@gmail.com', 'Dotty', 'Ludgrove'), ('kassiasouthgate@gmail.com', 'Kassia', 'Southgate'), ('georginefields@gmail.com', 'Georgine', 'Fields'), ('reebaduke@gmail.com', 'Reeba', 'Duke'), ('sallaverick@gmail.com', 'Sal', 'Laverick'), ('shandrahayes@gmail.com', 'Shandra', 'Hayes'), ('catharinachandler@gmail.com', 'Catharina', 'Chandler'), ('sybillestokoe@gmail.com', 'Sybille', 'Stokoe'), ('lucitawatling@gmail.com', 'Lucita', 'Watling'), ('steffirobin@gmail.com', 'Steffi', 'Robin'), ('hallieelmhirst@gmail.com', 'Hallie', 'Elmhirst'), ('edintruman@gmail.com', 'Edin', 'Truman'), ('gustieovering@gmail.com', 'Gustie', 'Overing'), ('lilianewolstencroft@gmail.com', 'Liliane', 'Wolstencroft'), ('adinaguthrie@gmail.com', 'Adina', 'Guthrie'), ('opheliematthews@gmail.com', 'Ophelie', 'Matthews'), ('katrinkahaworth@gmail.com', 'Katrinka', 'Haworth'), ('emmalinelucas@gmail.com', 'Emmaline', 'Lucas'), ('jessamineallan@gmail.com', 'Jessamine', 'Allan'), ('melanianobbs@gmail.com', 'Melania', 'Nobbs');

INSERT INTO customer_addresses (Customer_Email, House_No, City, Postcode) VALUES ('quentinturnbull@gmail.com' , '462', 'Carrollton', 'CA34 59ON'), ('sonjarowlinson@gmail.com' , '764', 'Winston', 'WI90 41ON'), ('marrislinford@gmail.com' , '328', 'Charlotte', 'CH97 60TE'), ('minervawrench@gmail.com' , '705', 'Long Beach', 'LO14 96CH'), ('laraineemms@gmail.com' , '724', 'Elk Grove', 'EL24 71VE'), ('lavenastrange@gmail.com' , '146', 'Huntington Beach', 'HU98 65CH'), ('kittykirwan@gmail.com' , '921', 'Minneapolis', 'MI43 31IS'), ('gretejasper@gmail.com' , '794', 'Winston', 'WI64 40ON'), ('chantalo hara@gmail.com' , '930', 'Salt Lake City', 'SA83 4TY'), ('debibland@gmail.com' , '560', 'Atlanta', 'AT89 68TA'), ('anabalwithers@gmail.com' , '308', 'Danbury', 'DA78 85RY'), ('doralynneflaxman@gmail.com' , '320', 'New Haven', 'NE31 52EN'), ('chiarraconnolly@gmail.com' , '431', 'Medford', 'ME57 87RD'), ('allsunmackie@gmail.com' , '780', 'Simi Valley', 'SI6 28EY'), ('beverietips@gmail.com' , '197', 'Fitchburg', 'FI84 2RG'), ('estherdodd@gmail.com' , '948', 'Davidson County', 'DA99 20TY'), ('euphemiacharles@gmail.com' , '31', 'McAllen', 'MC21 34EN'), ('othatoomer@gmail.com' , '360', 'Saint Petersburg', 'SA62 47RG'), ('margerycallow@gmail.com' , '792', 'Grayslake', 'GR2 82KE'), ('kerianndenham@gmail.com' , '640', 'Provo', 'PR27 28VO'), ('michalreygan@gmail.com' , '641', 'Rancho Cucamonga', 'RA10 98GA'), ('marybellekacy@gmail.com' , '116', 'Savannah', 'SA51 89AH'), ('martileroy@gmail.com' , '23', 'Buffalo', 'BU10 9LO'), ('holly-annetell@gmail.com' , '838', 'Cambridge', 'CA98 72GE'), ('agkayes@gmail.com' , '218', 'Lorain', 'LO36 62IN'), ('morganbinnington@gmail.com' , '657', 'Hartford', 'HA55 74RD'), ('dioneaitchison@gmail.com' , '553', 'Denton', 'DE16 54ON'), ('samariastamp@gmail.com' , '581', 'Havre de Grace', 'HA17 19CE'), ('doroteyaholl@gmail.com' , '968', 'Stockton', 'ST89 64ON'), ('bryanalovegrove@gmail.com' , '395', 'Olathe', 'OL90 15HE'), ('soniadougherty@gmail.com' , '55', 'Beaumont', 'BE53 10NT'), ('bonnibellerowlands@gmail.com' , '115', 'Beaumont', 'BE25 27NT'), ('norinacousins@gmail.com' , '245', 'Paterson', 'PA67 59ON'), ('marrissapeach@gmail.com' , '936', 'Winston', 'WI94 87ON'), ('corettaramm@gmail.com' , '61', 'Atlanta', 'AT71 73TA'), ('rowenahinton@gmail.com' , '701', 'Kansas City', 'KA37 97TY'), ('britteshanks@gmail.com' , '988', 'Aurora', 'AU6 67RA'), ('elbertinawadham@gmail.com' , '254', 'Lexington', 'LE59 60ON'), ('mabeloconnell@gmail.com' , '359', 'Port Arthur', 'PO11 68UR'), ('mandaknighton@gmail.com' , '60', 'Orem', 'OR31 39EM'), ('mariceaston@gmail.com' , '268', 'Yakima', 'YA83 54MA'), ('petroniaravenscroft@gmail.com' , '23', 'Monterey', 'MO41 52EY'), ('desiraejakeman@gmail.com' , '487', 'Saint Petersburg', 'SA56 24RG'), ('nanondaniel@gmail.com' , '439', 'South Lyon', 'SO99 56ON'), ('mellieellis@gmail.com' , '0', 'Mission Viejo', 'MI63 86JO'), ('constantiafreeman@gmail.com' , '875', 'Charlotte', 'CH59 18TE'), ('korneypipe@gmail.com' , '979', 'Sebastian', 'SE10 67AN'), ('trudismart@gmail.com' , '666', 'Nashua', 'NA7 46UA'), ('clohumphries@gmail.com' , '403', 'Santa Clara', 'SA35 20RA'), ('dosiredding@gmail.com' , '590', 'Portland', 'PO12 53ND'), ('kaiabatchelor@gmail.com' , '322', 'Johnson City', 'JO29 39TY'), ('andieread@gmail.com' , '836', 'Torrance', 'TO99 0CE'), ('sarenabaines@gmail.com' , '378', 'Wichita', 'WI18 64TA'), ('neiletomes@gmail.com' , '393', 'Apple Valley', 'AP48 31EY'), ('breanneo hare@gmail.com' , '149', 'Portsmouth', 'PO16 52TH'), ('ladonnawestwood@gmail.com' , '27', 'Chattanooga', 'CH2 75GA'), ('dorolisaoldroyd@gmail.com' , '737', 'Santa Ana', 'SA96 20NA'), ('myrleneduke@gmail.com' , '61', 'Downey', 'DO69 3EY'), ('nettiellwood@gmail.com' , '100', 'Miramar', 'MI99 87AR'), ('lindiehilton@gmail.com' , '421', 'Austin', 'AU67 80IN'), ('lesliewhitlock@gmail.com' , '580', 'Irving', 'IR40 57NG'), ('yettakromberg@gmail.com' , '231', 'Waterbury', 'WA85 26RY'), ('karonfowley@gmail.com' , '234', 'Burlington', 'BU91 38ON'), ('klarikapollock@gmail.com' , '41', 'Lewisville', 'LE66 26LE'), ('theresinaheneghan@gmail.com' , '717', 'South Bend', 'SO15 64ND'), ('erminakennett@gmail.com' , '941', 'Huntsville', 'HU41 34LE'), ('lonniranger@gmail.com' , '707', 'Harlingen', 'HA3 13EN'), ('jillielogan@gmail.com' , '383', 'Inglewood', 'IN95 53OD'), ('reikocrown@gmail.com' , '114', 'McAllen', 'MC73 65EN'), ('christinamcdonagh@gmail.com' , '423', 'Visalia', 'VI16 98IA'), ('virginiagilmore@gmail.com' , '955', 'Apple Valley', 'AP75 29EY'), ('babbieodam@gmail.com' , '688', 'Asheville', 'AS73 89LE'), ('rozalielawal@gmail.com' , '99', 'Glendale', 'GL0 7LE'), ('kelseyrushbrooke@gmail.com' , '259', 'New Haven', 'NE33 39EN'), ('benedettaflaxman@gmail.com' , '638', 'Poughkeepsie', 'PO71 66IE'), ('corabelgalvin@gmail.com' , '256', 'Lowell', 'LO6 82LL'), ('patbray@gmail.com' , '679', 'Honolulu', 'HO45 65LU'), ('mernagibb@gmail.com' , '460', 'Lexington', 'LE1 99ON'), ('ardahadfield@gmail.com' , '223', 'Philadelphia', 'PH17 98IA'), ('carleelangley@gmail.com' , '198', 'Carrollton', 'CA33 49ON'), ('rianeo mahoney@gmail.com' , '598', 'Gilbert', 'GI65 50RT'), ('valmasilva@gmail.com' , '101', 'Fitchburg', 'FI35 17RG'), ('roselinemcdougall@gmail.com' , '896', 'Savannah', 'SA91 86AH'), ('yettajeffers@gmail.com' , '491', 'Athens', 'AT77 79NS'), ('meadjackson@gmail.com' , '128', 'Jacksonville', 'JA51 15LE'), ('prudencemanning@gmail.com' , '325', 'Norman', 'NO19 51AN'), ('dyannakensington@gmail.com' , '718', 'Poughkeepsie', 'PO75 47IE'), ('carolechild@gmail.com' , '122', 'Monterey', 'MO29 9EY'), ('pegeenestlick@gmail.com' , '508', 'Los Angeles', 'LO17 97ES'), ('margajarrold@gmail.com' , '780', 'Las Vegas', 'LA70 91AS'), ('quinnholloway@gmail.com' , '533', 'Henderson', 'HE63 58ON'), ('jerrilynglass@gmail.com' , '4', 'San Francisco', 'SA37 42CO'), ('leishastoddart@gmail.com' , '475', 'Odessa', 'OD21 43SA'), ('moragibbins@gmail.com' , '299', 'Kalamazoo', 'KA18 68OO'), ('jyotimistry@gmail.com' , '113', 'North Charleston', 'NO7 82ON'), ('jerryleesanders@gmail.com' , '68', 'Waterloo', 'WA48 75OO'), ('stacipattison@gmail.com' , '638', 'Hartford', 'HA57 51RD'), ('melisandefosse@gmail.com' , '736', 'Chandler', 'CH59 21ER'), ('georgiannasalisbury@gmail.com' , '783', 'Vero Beach', 'VE32 83CH'), ('belitamarks@gmail.com' , '289', 'Seaside', 'SE47 3DE'), ('dennitoland@gmail.com' , '448', 'Lincoln', 'LI26 85LN'), ('luellagascoyne@gmail.com' , '360', 'Jersey City', 'JE39 88TY'), ('ezmeraldaneilson@gmail.com' , '866', 'St. Paul', 'ST30 97UL'), ('kiahcarmichael@gmail.com' , '790', 'Chandler', 'CH86 80ER'), ('kelciepaskell@gmail.com' , '999', 'Roanoke', 'RO47 96KE'), ('mayeluxton@gmail.com' , '738', 'Milwaukee', 'MI72 49EE'), ('chrissyantram@gmail.com' , '473', 'Escondido', 'ES77 64DO'), ('erinnmoseley@gmail.com' , '47', 'Jersey City', 'JE15 2TY'), ('dottyludgrove@gmail.com' , '721', 'Augusta', 'AU38 10TA'), ('kassiasouthgate@gmail.com' , '726', 'Redding', 'RE37 59NG'), ('georginefields@gmail.com' , '620', 'Vero Beach', 'VE29 3CH'), ('reebaduke@gmail.com' , '350', 'Salt Lake City', 'SA11 55TY'), ('sallaverick@gmail.com' , '515', 'Evansville', 'EV97 50LE'), ('shandrahayes@gmail.com' , '286', 'Sterling Heights', 'ST57 40TS'), ('catharinachandler@gmail.com' , '632', 'Pittsburgh', 'PI40 7GH'), ('sybillestokoe@gmail.com' , '422', 'Long Beach', 'LO13 82CH'), ('lucitawatling@gmail.com' , '553', 'Orem', 'OR83 27EM'), ('steffirobin@gmail.com' , '403', 'St. Paul', 'ST8 5UL'), ('hallieelmhirst@gmail.com' , '961', 'Ontario', 'ON27 3IO'), ('edintruman@gmail.com' , '115', 'Port Saint Lucie', 'PO61 13IE'), ('gustieovering@gmail.com' , '99', 'Chandler', 'CH48 17ER'), ('lilianewolstencroft@gmail.com' , '340', 'Flint', 'FL7 91NT'), ('adinaguthrie@gmail.com' , '533', 'Oakland', 'OA46 89ND'), ('opheliematthews@gmail.com' , '83', 'Fitchburg', 'FI43 81RG'), ('katrinkahaworth@gmail.com' , '283', 'Kennewick', 'KE97 66CK'), ('emmalinelucas@gmail.com' , '222', 'Montgomery', 'MO11 74RY'), ('jessamineallan@gmail.com' , '67', 'Ontario', 'ON1 94IO'), ('melanianobbs@gmail.com' , '411', 'Mission Viejo', 'MI80 10JO');

INSERT INTO staff (Staff_Email, Staff_FirstName, Staff_LastName) VALUES ('agnesdolman@lcs.com', 'Agnes', 'Dolman'), ('friederikenorbury@lcs.com', 'Friederike', 'Norbury'), ('piperduval@lcs.com', 'Piper', 'Duval'), ('grethelwarden@lcs.com', 'Grethel', 'Warden'), ('charmainegandham@lcs.com', 'Charmaine', 'Gandham'), ('xenianeish@lcs.com', 'Xenia', 'Neish'), ('marliesisson@lcs.com', 'Marlie', 'Sisson'), ('kamilahmacaulay@lcs.com', 'Kamilah', 'Macaulay'), ('eddiricketts@lcs.com', 'Eddi', 'Ricketts'), ('pamneilsen@lcs.com', 'Pam', 'Neilsen'), ('alixcohen@lcs.com', 'Alix', 'Cohen'), ('yevettedesai@lcs.com', 'Yevette', 'Desai'), ('tallycliff@lcs.com', 'Tally', 'Cliff'), ('prudencebramley@lcs.com', 'Prudence', 'Bramley'), ('beliaporter@lcs.com', 'Belia', 'Porter'), ('florriesheldon@lcs.com', 'Florrie', 'Sheldon');

INSERT INTO services (Service_Name, Service_Description, Service_Price) VALUES ('Replace desktop hard drive', 'Hard drive failure. Supply and replace 500Gb hard drive. Reinstall software. Transfer data from old hard drive to new.', '130'), ('Supply and replace power socket', 'Laptop/Computer power socket', '90'), ('Desktop power supply failure', 'Supply and replace the power supply unit.', '65'), ('PC - Removal of malware', 'Scan, remove and repair. Assumming a common type of malware (scamware or spyware).', '60'), ('PC- Removal of virus', 'Scan, remove and repair. Assuming most common virus.', '60'), ('Laptop - Liquid damage/drink spillage', 'Quote for drying out various parts. Assuming nothing needs replacing.', '55'), ('Laptop - supply and replace broken laptop screen', 'Supply and replace a 15.6 inch screen.', '120'), ('PC - install a new operating system', 'Install latest window package on a PC.', '100'), ('Visit customer’s home to set up a new desktop computer', 'Set up home PC with standard monitor, mouse, keyboard, printer and wi-fi.', '55'), ('PC - carry out a general service', 'Machine running slow. Clean up; no faults or upgrades needed.', '60'), ('Laptop – transfer all data and reinstall programs from hard drive of old laptop to new laptop', 'Assuming laptop has 320GB hard drive and is running Windows 10.', '50');

INSERT INTO orders (Customer_Email, Order_Date_Time, Staff_Email) VALUES ('britteshanks@gmail.com','2019-09-05 10:18:19', 'charmainegandham@lcs.com'), ('clohumphries@gmail.com', '2019-12-01 09:27:25', 'piperduval@lcs.com'), ('dyannakensington@gmail.com', '2019-11-11 08:20:18', 'yevettedesai@lcs.com'), ('hallieelmhirst@gmail.com', '2019-12-10 21:45:55', 'friederikenorbury@lcs.com'), ('kassiasouthgate@gmail.com', '2019-11-18 17:41:29', 'marliesisson@lcs.com'), ('jessamineallan@gmail.com', '2019-11-04 23:43:25', 'pamneilsen@lcs.com'), ('marrislinford@gmail.com', '2019-10-08 07:18:34', 'agnesdolman@lcs.com'), ('nanondaniel@gmail.com', '2019-10-16 12:33:28', 'kamilahmacaulay@lcs.com'), ('melisandefosse@gmail.com', '2019-10-24 13:17:32', 'piperduval@lcs.com'), ('quentinturnbull@gmail.com', '2019-10-26 13:19:22', 'friederikenorbury@lcs.com'), ('soniadougherty@gmail.com', '2019-10-07 08:33:33', 'marliesisson@lcs.com'), ('reebaduke@gmail.com', '2019-09-05 20:40:24', 'charmainegandham@lcs.com'), ('yettakromberg@gmail.com', '2019-12-06 11:29:23', 'xenianeish@lcs.com'), ('benedettaflaxman@gmail.com', '2019-12-02 09:31:18', 'kamilahmacaulay@lcs.com'), ('morganbinnington@gmail.com', '2019-09-25 10:41:31', 'eddiricketts@lcs.com'), ('allsunmackie@gmail.com', '2019-09-01 13:17:36', 'friederikenorbury@lcs.com'), ('andieread@gmail.com', '2019-11-04 12:29:30', 'charmainegandham@lcs.com'), ('emmalinelucas@gmail.com', '2019-10-31 10:20:20', 'pamneilsen@lcs.com'), ('karonfowley@gmail.com', '2019-12-09 09:32:27', 'grethelwarden@lcs.com');

INSERT INTO order_details (Customer_Email, Order_Date_Time, Service_Name, Service_Ordered_Price, Discount, Quantity) VALUES ('allsunmackie@gmail.com', '2019-09-01 13:17:36', 'Desktop power supply failure', '90', '30', '1'), ('andieread@gmail.com', '2019-11-04 12:29:30', 'Laptop - Liquid damage/drink spillage', '55', '10', '1'), ('benedettaflaxman@gmail.com', '2019-12-02 09:31:18', 'Laptop - supply and replace broken laptop screen', '120', NULL, '1'), ('britteshanks@gmail.com', '2019-09-05 10:18:19', 'Laptop – transfer all data and reinstall programs from hard drive of old laptop to new laptop', '50', '50', '4'), ('clohumphries@gmail.com', '2019-12-01 09:27:25', 'PC - carry out a general service', '60', '25', '1'), ('dyannakensington@gmail.com', '2019-11-11 08:20:18', 'PC - install a new operating system', '50', '40', '2'), ('emmalinelucas@gmail.com', '2019-10-31 10:20:20', 'PC - Removal of malware', '60', '100', '1'), ('hallieelmhirst@gmail.com', '2019-12-10 21:45:55', 'PC- Removal of virus', '60', '15', '1'), ('jessamineallan@gmail.com', '2019-11-04 23:43:25', 'Replace desktop hard drive', '130', '75', '1'), ('karonfowley@gmail.com', '2019-12-09 09:32:27', 'Supply and replace power socket', '90', NULL, '1'), ('kassiasouthgate@gmail.com', '2019-11-18 17:41:29', 'Visit customer’s home to set up a new desktop computer', '55', NULL, '1'), ('marrislinford@gmail.com', '2019-10-08 07:18:34', 'PC - install a new operating system', '100', '50', '2'), ('melisandefosse@gmail.com', '2019-10-24 13:17:32', 'PC - carry out a general service', '60', '30', '1'), ('morganbinnington@gmail.com', '2019-09-25 10:41:31', 'Replace desktop hard drive', '130', '75', '1'), ('nanondaniel@gmail.com', '2019-10-16 12:33:28', 'PC - carry out a general service', '60', '25', '1'), ('quentinturnbull@gmail.com', '2019-10-26 13:19:22', 'Laptop - Liquid damage/drink spillage', '55', '10', '1'), ('reebaduke@gmail.com', '2019-09-05 20:40:24', 'PC - install a new operating system', '100', '40', '2'), ('soniadougherty@gmail.com', '2019-10-07 08:33:33', 'PC- Removal of virus', '60', '25', '4'), ('yettakromberg@gmail.com', '2019-12-06 11:29:23', 'Desktop power supply failure', '90', NULL, '1');

DELETE FROM customer_addresses WHERE Customer_Email = 'allsunmackie@gmail.com';

DELETE FROM order_details WHERE Customer_Email = 'allsunmackie@gmail.com';

DELETE FROM orders WHERE Customer_Email = 'allsunmackie@gmail.com';

DELETE FROM customers WHERE Customer_Email = 'allsunmackie@gmail.com';

UPDATE customer_addresses SET House_No = '863', City= 'Palmdale', Postcode = 'PA93 94LE' WHERE Customer_Email = 'agkayes@gmail.com';

CREATE VIEW Query_1 AS
SELECT Customer_Email, Customer_FirstName, Customer_LastName 
FROM customers 
WHERE Customer_Email IN 
(SELECT Customer_Email FROM orders UNION SELECT Customer_Email from orders);
SELECT * FROM Query_1;

CREATE VIEW Query_2 AS
SELECT staff.Staff_Email, staff.Staff_FirstName, staff.Staff_LastName, orders.Order_Date_Time, order_details.Service_Name
FROM staff
LEFT JOIN orders ON orders.Staff_Email = staff.Staff_Email
LEFT JOIN order_details on orders.Order_Date_Time = order_details.Order_Date_Time;
SELECT * FROM Query_2;

CREATE VIEW Query_3 AS
SELECT customers.Customer_Email, customers.Customer_FirstName, customers.Customer_LastName, order_details.Order_Date_Time, order_details.Service_Name, order_details.Service_Ordered_Price, order_details.Discount, order_details.Quantity
from order_details
RIGHT JOIN customers ON customers.Customer_Email = order_details.Customer_Email;
SELECT * FROM Query_3;

DROP DATABASE IF EXISTS copy_of_assignment_2;
CREATE DATABASE IF NOT EXISTS copy_of_assignment_2;
USE copy_of_assignment_2;

CREATE TABLE IF NOT EXISTS copy_of_customers like assignment_2.customers;
INSERT INTO copy_of_customers SELECT * FROM assignment_2.customers;

CREATE TABLE IF NOT EXISTS copy_of_customer_addresses like assignment_2.customer_addresses;
INSERT INTO copy_of_customer_addresses SELECT * FROM assignment_2.customer_addresses;

CREATE TABLE IF NOT EXISTS copy_of_orders like assignment_2.orders;
INSERT INTO copy_of_orders SELECT * FROM assignment_2.orders;

CREATE TABLE IF NOT EXISTS copy_of_order_details like assignment_2.order_details;
INSERT INTO copy_of_order_details SELECT * FROM assignment_2.order_details;

CREATE TABLE IF NOT EXISTS copy_of_services like assignment_2.services;
INSERT INTO copy_of_services SELECT * FROM assignment_2.services;

CREATE TABLE IF NOT EXISTS copy_of_staff like assignment_2.staff;
INSERT INTO copy_of_staff SELECT * FROM assignment_2.staff;

USE assignment_2;

DROP PROCEDURE IF EXISTS Find_Discount ;
DELIMITER //
CREATE PROCEDURE Find_Discount ( IN orderdiscount varchar (100) , OUT total INT )
BEGIN
SELECT COUNT(Customer_Email)
INTO total
FROM order_details
WHERE order_details.Discount = orderdiscount;
END//
DELIMITER ;

CALL Find_Discount ('25', @total);
SELECT @total;
