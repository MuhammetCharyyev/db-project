-- --------------------------------------------------------


--
-- Table structure for table categories
--
CREATE TABLE categories
(
    CategoryID   int NOT NULL,
    CategoryName varchar(255) DEFAULT NULL,
    Description  varchar(255) DEFAULT NULL
);

--
-- Dumping data for TABLE IF NOT EXISTS categories
--

INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (3, 'Confections', 'Desserts, candies, and sweet breads');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (4, 'Dairy Products', 'Cheeses');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (6, 'Meat/Poultry', 'Prepared meats');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (7, 'Produce', 'Dried fruit and bean curd');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (8, 'Seafood', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Table structure for table customers
--
CREATE TABLE customers
(
    CustomerID   int NOT NULL,
    CustomerName varchar(255) DEFAULT NULL,
    ContactName  varchar(255) DEFAULT NULL,
    Address      varchar(255) DEFAULT NULL,
    City         varchar(255) DEFAULT NULL,
    PostalCode   varchar(255) DEFAULT NULL,
    Country      varchar(255) DEFAULT NULL
);

--
-- Dumping data for table customers
--

INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constituci�n 2222', 'M�xico D.F.',
        '05021', 'Mexico');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (3, 'Antonio Moreno Taquer�a', 'Antonio Moreno', 'Mataderos 2312', 'M�xico D.F.', '05023', 'Mexico');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (5, 'Berglunds snabbk�p', 'Christina Berglund', 'Berguvsv�gen 8', 'Lule�', 'S-958 22', 'Sweden');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (7, 'Blondel p�re et fils', 'Fr�d�rique Citeaux', '24, place Kl�ber', 'Strasbourg', '67000', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (8, 'B�lido Comidas preparadas', 'Mart�n Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (9, 'Bon app''', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (11, 'B''s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'M�xico D.F.', '05022',
        'Mexico');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (15, 'Com�rcio Mineiro', 'Pedro Afonso', 'Av. dos Lus�adas, 23', 'S�o Paulo', '05432-043', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Or�s, 92', 'S�o Paulo', '05442-030', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C Moralzarzal, 86', 'Madrid', '28034', 'Spain');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (23, 'Folies gourmandes', 'Martine Ranc�', '184, chauss�e de Tournai', 'Lille', '59000', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (24, 'Folk och f� HB', 'Maria Larsson', '�kergatan 24', 'Br�cke', 'S-844 67', 'Sweden');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'M�nchen', '80805', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (29, 'Galer�a del gastr�nomo', 'Eduardo Saavedra', 'Rambla de Catalu�a, 23', 'Barcelona', '08022', 'Spain');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (30, 'Godos Cocina T�pica', 'Jos� Pedro Freyre', 'C Romero, 33', 'Sevilla', '41101', 'Spain');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (31, 'Gourmet Lanchonetes', 'Andr� Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5� Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Pa�o, 67', 'Rio de Janeiro', '05454-876', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (35, 'HILARI�N-Abastos', 'Carlos Hern�ndez', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist�bal',
        '5022', 'Venezuela');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (39, 'K�niglich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (40, 'La corne d''abondance', 'Daniel Tonini', '67, avenue de l''Europe', 'Versailles', '78000', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (41, 'La maison d''Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (45, 'Let''s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (46, 'LILA-Supermercado', 'Carlos Gonz�lez', 'Carrera 52 con Ave. Bol�var #65-98 Llano Largo', 'Barquisimeto',
        '3508', 'Venezuela');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (51, 'M�re Paillarde', 'Jean Fresni�re', '43 rue St. Laurent', 'Montr�al', 'H1J 1C3', 'Canada');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (54, 'Oc�ano Atl�ntico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010',
        'Argentina');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (56, 'Ottilies K�seladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'K�ln', '50739', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (57, 'Paris sp�cialit�s', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (58, 'Pericles Comidas cl�sicas', 'Guillermo Fern�ndez', 'Calle Dr. Jorge Cash 321', 'M�xico D.F.', '05033' 'Mexico');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da sa�de n. 58', 'Lisboa', '1756', 'Portugal');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (61, 'Que Del�cia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (62, 'Queen Cozinha', 'L�cia Carvalho', 'Alameda dos Can�rios, 891', 'S�o Paulo', '05487-020', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstra�e 10', 'Cunewalde', '01307', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (64, 'Rancho grande', 'Sergio Guti�rrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Gen�ve', '1203', 'Switzerland');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (69, 'Romero y tomillo', 'Alejandra Camino', 'Gran V�a, 1', 'Madrid', '28001', 'Spain');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (70, 'Sant� Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (73, 'Simons bistro', 'Jytte Petersen', 'Vinb�ltet 34', 'K�benhavn', '1734', 'Denmark');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (74, 'Sp�cialit�s du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (76, 'Supr�mes d�lices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (79, 'Toms Spezialit�ten', 'Karin Josephs', 'Luisenstr. 48', 'M�nster', '44087', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'M�xico D.F.', '05033', 'Mexico');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (81, 'Tradi��o Hipermercados', 'Anabela Domingues', 'Av. In�s de Castro, 414', 'S�o Paulo', '05634-030',
        'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (82, 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsl�get 45', '�rhus', '8200', 'Denmark');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l''Abbaye', 'Reims', '51100', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (86, 'Die Wandernde Kuh', 'Rita M�ller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (91, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

-- --------------------------------------------------------

--
-- Table structure for table employees
--
CREATE TABLE  agents
(
    EmployeeID int NOT NULL,
    LastName   varchar(255) DEFAULT NULL,
    FirstName  varchar(255) DEFAULT NULL,
    BirthDate  DATE        DEFAULT NULL,
    Photo      varchar(255) DEFAULT NULL,
    Notes      text
);

--
-- Dumping data for table employees
--

INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (1, 'Davolio', 'Nancy', TO_DATE('1968-12-08','YYYY-MM-DD'), 'EmpID1.pic',
        'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of ''Toastmasters International''.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES  (2, 'Fuller', 'Andrew', TO_DATE('1952-02-19','YYYY-MM-DD'), 'EmpID2.pic',
         'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES   (3, 'Leverling', 'Janet', TO_DATE('1963-08-30','YYYY-MM-DD'), 'EmpID3.pic',
          'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (4, 'Peacock', 'Margaret', TO_DATE('1958-09-19','YYYY-MM-DD'), 'EmpID4.pic',
        'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (5, 'Buchanan', 'Steven',TO_DATE( '1955-03-04','YYYY-MM-DD'), 'EmpID5.pic',
        'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses ''Successful Telemarketing'' and ''International Sales Management''. He is fluent in French.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (6, 'Suyama', 'Michael',TO_DATE( '1963-07-02','YYYY-MM-DD') , 'EmpID6.pic',
        'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses ''Multi-Cultural Selling'' and ''Time Management for the Sales Professional''. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (7, 'King', 'Robert', TO_DATE( '1960-05-29','YYYY-MM-DD'), 'EmpID7.pic',
        'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled ''Selling in Europe'', he was transferred to the London office.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (8, 'Callahan', 'Laura', TO_DATE( '1958-01-09','YYYY-MM-DD'), 'EmpID8.pic',
        'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (9, 'Dodsworth', 'Anne', TO_DATE( '1969-07-02','YYYY-MM-DD'), 'EmpID9.pic',
        'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.');
INSERT INTO agents (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (10, 'West', 'Adam', TO_DATE( '1928-09-19','YYYY-MM-DD'), 'EmpID10.pic', 'An old chum.');

-- --------------------------------------------------------

--
-- Table structure for table orders
--

CREATE TABLE  orders
(
    OrderID    int NOT NULL,
    CustomerID int  DEFAULT NULL,
    EmployeeID int  DEFAULT NULL,
    OrderDate  date DEFAULT NULL,
    ShipperID  int  DEFAULT NULL
);

--
-- Dumping data for table orders
--
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10248,90,5,to_date('04-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10249,81,6,to_date('05-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10250,34,4,to_date('08-JUL-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10251,84,3,to_date('08-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10252,76,4,to_date('09-JUL-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10253,34,3,to_date('10-JUL-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10254,14,5,to_date('11-JUL-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10255,68,9,to_date('12-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10256,88,3,to_date('15-JUL-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10257,35,4,to_date('16-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10258,20,1,to_date('17-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10259,13,4,to_date('18-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10260,55,4,to_date('19-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10261,61,4,to_date('19-JUL-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10262,65,8,to_date('22-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10263,20,9,to_date('23-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10264,24,6,to_date('24-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10265,7,2,to_date('25-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10266,87,3,to_date('26-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10267,25,4,to_date('29-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10268,33,8,to_date('30-JUL-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10269,89,5,to_date('31-JUL-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10270,87,1,to_date('01-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10271,75,6,to_date('01-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10272,65,6,to_date('02-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10273,63,3,to_date('05-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10274,85,6,to_date('06-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10275,49,1,to_date('07-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10276,80,8,to_date('08-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10277,52,2,to_date('09-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10278,5,8,to_date('12-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10279,44,8,to_date('13-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10280,5,2,to_date('14-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10281,69,4,to_date('14-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10282,69,4,to_date('15-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10283,46,3,to_date('16-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10284,44,4,to_date('19-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10285,63,1,to_date('20-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10286,63,8,to_date('21-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10287,67,8,to_date('22-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10288,66,4,to_date('23-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10289,11,7,to_date('26-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10290,15,8,to_date('27-AUG-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10291,61,6,to_date('27-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10292,81,1,to_date('28-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10293,80,1,to_date('29-AUG-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10294,65,4,to_date('30-AUG-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10295,85,2,to_date('02-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10296,46,6,to_date('03-SEP-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10297,7,5,to_date('04-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10298,37,6,to_date('05-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10299,67,4,to_date('06-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10300,49,2,to_date('09-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10301,86,8,to_date('09-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10302,76,4,to_date('10-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10303,30,7,to_date('11-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10304,80,1,to_date('12-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10305,55,8,to_date('13-SEP-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10306,69,1,to_date('16-SEP-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10307,48,2,to_date('17-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10308,2,7,to_date('18-SEP-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10309,37,3,to_date('19-SEP-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10310,77,8,to_date('20-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10311,18,1,to_date('20-SEP-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10312,86,2,to_date('23-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10313,63,2,to_date('24-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10314,65,1,to_date('25-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10315,38,4,to_date('26-SEP-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10316,65,1,to_date('27-SEP-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10317,48,6,to_date('30-SEP-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10318,38,8,to_date('01-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10319,80,7,to_date('02-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10320,87,5,to_date('03-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10321,38,3,to_date('03-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10322,58,7,to_date('04-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10323,39,4,to_date('07-OCT-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10324,71,9,to_date('08-OCT-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10325,39,1,to_date('09-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10326,8,4,to_date('10-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10327,24,2,to_date('11-OCT-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10328,28,4,to_date('14-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10329,75,4,to_date('15-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10330,46,3,to_date('16-OCT-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10331,9,9,to_date('16-OCT-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10332,51,3,to_date('17-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10333,87,5,to_date('18-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10334,84,8,to_date('21-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10335,37,7,to_date('22-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10336,60,7,to_date('23-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10337,25,4,to_date('24-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10338,55,4,to_date('25-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10339,51,2,to_date('28-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10340,9,1,to_date('29-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10341,73,7,to_date('29-OCT-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10342,25,4,to_date('30-OCT-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10343,44,4,to_date('31-OCT-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10344,89,4,to_date('01-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10345,63,2,to_date('04-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10346,65,3,to_date('05-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10347,21,4,to_date('06-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10348,86,4,to_date('07-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10349,75,7,to_date('08-NOV-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10350,41,6,to_date('11-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10351,20,1,to_date('11-NOV-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10352,28,3,to_date('12-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10353,59,7,to_date('13-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10354,58,8,to_date('14-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10355,4,6,to_date('15-NOV-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10356,86,6,to_date('18-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10357,46,1,to_date('19-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10358,41,5,to_date('20-NOV-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10359,72,5,to_date('21-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10360,7,4,to_date('22-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10361,63,1,to_date('22-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10362,9,3,to_date('25-NOV-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10363,17,4,to_date('26-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10364,19,1,to_date('26-NOV-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10365,3,3,to_date('27-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10366,29,8,to_date('28-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10367,83,7,to_date('28-NOV-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10368,20,2,to_date('29-NOV-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10369,75,8,to_date('02-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10370,14,6,to_date('03-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10371,41,1,to_date('03-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10372,62,5,to_date('04-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10373,37,4,to_date('05-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10374,91,1,to_date('05-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10375,36,3,to_date('06-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10376,51,1,to_date('09-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10377,72,1,to_date('09-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10378,24,5,to_date('10-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10379,61,2,to_date('11-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10380,37,8,to_date('12-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10381,46,3,to_date('12-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10382,20,4,to_date('13-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10383,4,8,to_date('16-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10384,5,3,to_date('16-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10385,75,1,to_date('17-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10386,21,9,to_date('18-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10387,70,1,to_date('18-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10388,72,2,to_date('19-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10389,10,4,to_date('20-DEC-96','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10390,20,6,to_date('23-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10391,17,3,to_date('23-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10392,59,2,to_date('24-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10393,71,1,to_date('25-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10394,36,1,to_date('25-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10395,35,6,to_date('26-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10396,25,1,to_date('27-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10397,60,5,to_date('27-DEC-96','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10398,71,2,to_date('30-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10399,83,8,to_date('31-DEC-96','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10400,19,1,to_date('01-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10401,65,1,to_date('01-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10402,20,8,to_date('02-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10403,20,4,to_date('03-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10404,49,2,to_date('03-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10405,47,1,to_date('06-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10406,62,7,to_date('07-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10407,56,2,to_date('07-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10408,23,8,to_date('08-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10409,54,3,to_date('09-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10410,10,3,to_date('10-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10411,10,9,to_date('10-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10412,87,8,to_date('13-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10413,41,3,to_date('14-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10414,21,2,to_date('14-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10415,36,3,to_date('15-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10416,87,8,to_date('16-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10417,73,4,to_date('16-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10418,63,4,to_date('17-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10419,68,4,to_date('20-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10420,88,3,to_date('21-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10421,61,8,to_date('21-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10422,27,2,to_date('22-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10423,31,6,to_date('23-JAN-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10424,51,7,to_date('23-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10425,41,6,to_date('24-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10426,29,4,to_date('27-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10427,59,4,to_date('27-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10428,66,7,to_date('28-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10429,37,3,to_date('29-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10430,20,4,to_date('30-JAN-97','DD-MON-RR'),1);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10431,10,4,to_date('30-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10432,75,3,to_date('31-JAN-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10433,60,3,to_date('03-FEB-97','DD-MON-RR'),3);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10434,24,3,to_date('03-FEB-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10435,16,8,to_date('04-FEB-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,SHIPPERID) values (10436,7,3,to_date('05-FEB-97','DD-MON-RR'),2);
Insert into HR.ORDERS (ORDER... (79 KB left)
