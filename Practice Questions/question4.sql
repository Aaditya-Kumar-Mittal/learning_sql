USE practice1;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

INSERT INTO
    Customers (
        CustomerID,
        CustomerName,
        ContactName,
        Address,
        City,
        PostalCode,
        Country
    )
VALUES (
        1,
        'Alfreds Futterkiste',
        'Maria Anders',
        'Obere Str. 57',
        'Berlin',
        '12209',
        'Germany'
    ),
    (
        2,
        'Ana Trujillo Emparedados y helados',
        'Ana Trujillo',
        'Avda. de la Constitución 2222',
        'México D.F.',
        '05021',
        'Mexico'
    ),
    (
        3,
        'Antonio Moreno Taquería',
        'Antonio Moreno',
        'Mataderos 2312',
        'México D.F.',
        '05023',
        'Mexico'
    ),
    (
        4,
        'Around the Horn',
        'Thomas Hardy',
        '120 Hanover Sq.',
        'London',
        'WA1 1DP',
        'UK'
    ),
    (
        5,
        'Berglunds snabbköp',
        'Christina Berglund',
        'Berguvsvägen 8',
        'Luleå',
        'S-958 22',
        'Sweden'
    ),
    (
        6,
        'Blauer See Delikatessen',
        'Hanna Moos',
        'Forsterstr. 57',
        'Mannheim',
        '68306',
        'Germany'
    ),
    (
        7,
        'Blondel père et fils',
        'Frédérique Citeaux',
        '24, place Kléber',
        'Strasbourg',
        '67000',
        'France'
    ),
    (
        8,
        'Bólido Comidas preparadas',
        'Martín Sommer',
        'C/ Araquil, 67',
        'Madrid',
        '28023',
        'Spain'
    ),
    (
        9,
        'Bon app',
        'Laurence Lebihans',
        '12, rue des Bouchers',
        'Marseille',
        '13008',
        'France'
    ),
    (
        10,
        'Bottom-Dollar Marketse',
        'Elizabeth Lincoln',
        '23 Tsawassen Blvd.',
        'Tsawassen',
        'T2F 8M4',
        'Canada'
    ),
    (
        11,
        "B's Beverages",
        'Victoria Ashworth',
        'Fauntleroy Circus',
        'London',
        'EC2 5NT',
        'UK'
    ),
    (
        12,
        'Cactus Comidas para llevar',
        'Patricio Simpson',
        'Cerrito 333',
        'Buenos Aires',
        '1010',
        'Argentina'
    ),
    (
        13,
        'Centro comercial Moctezuma',
        'Francisco Chang',
        'Sierras de Granada 9993',
        'México D.F.',
        '05022',
        'Mexico'
    ),
    (
        14,
        'Chop-suey Chinese',
        'Yang Wang',
        'Hauptstr. 29',
        'Bern',
        '3012',
        'Switzerland'
    ),
    (
        15,
        'Comércio Mineiro',
        'Pedro Afonso',
        'Av. dos Lusíadas, 23',
        'São Paulo',
        '05432-043',
        'Brazil'
    ),
    (
        16,
        'Consolidated Holdings',
        'Elizabeth Brown',
        'Berkeley Gardens 12 Brewery',
        'London',
        'WX1 6LT',
        'UK'
    ),
    (
        17,
        'Drachenblut Delikatessen',
        'Sven Ottlieb',
        'Walserweg 21',
        'Aachen',
        '52066',
        'Germany'
    ),
    (
        18,
        'Du monde entier',
        'Janine Labrune',
        '67, rue des Cinquante Otages',
        'Nantes',
        '44000',
        'France'
    ),
    (
        19,
        'Eastern Connection',
        'Ann Devon',
        '35 King George',
        'London',
        'WX3 6FW',
        'UK'
    ),
    (
        20,
        'Ernst Handel',
        'Roland Mendel',
        'Kirchgasse 6',
        'Graz',
        '8010',
        'Austria'
    ),
    (
        21,
        'Familia Arquibaldo',
        'Aria Cruz',
        'Rua Orós, 92',
        'São Paulo',
        '05442-030',
        'Brazil'
    );

SELECT * FROM Customers ORDER BY PostalCode DESC;

SELECT * FROM Customers ORDER BY PostalCode ASC;

SELECT * FROM Customers ORDER BY ContactName ASC;

SELECT * FROM Customers ORDER BY Country, CustomerName;

SELECT *
FROM Customers
WHERE (
        Country = 'Germany'
        AND City = 'Berlin'
        AND PostalCode > 12000
    );

SELECT *
FROM Customers
WHERE
    Country = 'France'
    AND (
        CustomerName LIKE 'G%'
        OR CustomerName LIKE 'R%'
    );

SELECT *
FROM Customers
WHERE
    Country = 'France'
    AND CustomerName LIKE 'G%'
    OR CustomerName LIKE 'R%';

SELECT *
FROM Customers
WHERE
    Country = 'Germany'
    OR Country = 'Spain';

SELECT *
FROM Customers
WHERE
    City = 'Berlin'
    OR CustomerName LIKE 'G%'
    OR Country = 'Norway';

    SELECT * FROM Customers
WHERE NOT Country = 'Spain';

SELECT * FROM Customers 
WHERE CustomerName NOT LIKE 'C%' 
ORDER BY CustomerName ASC;

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 20;

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London')
ORDER BY City ASC;

SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;