USE testdb;

SHOW TABLES;

CREATE TABLE table5 (
    engineer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(50) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50) UNIQUE,
    experience INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE table6_tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(50) NOT NULL,
    task_description TEXT NOT NULL,
    employee_id INT
);

-- Creating table5
CREATE TABLE table5 (
    engineer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(50) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50) UNIQUE,
    experience INT,
    salary DECIMAL(10, 2)
);

-- Inserting 30 sample records
INSERT INTO
    table5 (
        engineer_name,
        profession,
        email,
        experience,
        salary
    )
VALUES (
        'Alice Johnson',
        'Software Engineer',
        'alice.johnson@email.com',
        5,
        70000.00
    ),
    (
        'Bob Smith',
        'Mechanical Engineer',
        'bob.smith@email.com',
        7,
        80000.50
    ),
    (
        'Charlie Brown',
        'Civil Engineer',
        'charlie.brown@email.com',
        4,
        65000.75
    ),
    (
        'David Williams',
        'Electrical Engineer',
        'david.williams@email.com',
        6,
        72000.00
    ),
    (
        'Eve Davis',
        'Software Engineer',
        'eve.davis@email.com',
        3,
        67000.25
    ),
    (
        'Frank Miller',
        'Data Engineer',
        'frank.miller@email.com',
        8,
        85000.50
    ),
    (
        'Grace Wilson',
        'AI Engineer',
        'grace.wilson@email.com',
        10,
        95000.75
    ),
    (
        'Henry Moore',
        'Mechanical Engineer',
        'henry.moore@email.com',
        9,
        87000.00
    ),
    (
        'Isabella Taylor',
        'Software Engineer',
        'isabella.taylor@email.com',
        5,
        72000.50
    ),
    (
        'Jack White',
        'Network Engineer',
        'jack.white@email.com',
        4,
        68000.75
    ),
    (
        'Katie Harris',
        'Electrical Engineer',
        'katie.harris@email.com',
        6,
        89000.00
    ),
    (
        'Leo Martin',
        'Automobile Engineer',
        'leo.martin@email.com',
        7,
        78000.50
    ),
    (
        'Mia Clark',
        'Software Engineer',
        'mia.clark@email.com',
        3,
        65000.75
    ),
    (
        'Noah Walker',
        'Civil Engineer',
        'noah.walker@email.com',
        4,
        74000.00
    ),
    (
        'Olivia Scott',
        'Data Engineer',
        'olivia.scott@email.com',
        9,
        98000.25
    ),
    (
        'Paul Hall',
        'Mechanical Engineer',
        'paul.hall@email.com',
        10,
        92000.50
    ),
    (
        'Quincy Young',
        'Software Engineer',
        'quincy.young@email.com',
        2,
        60000.75
    ),
    (
        'Rachel King',
        'Electrical Engineer',
        'rachel.king@email.com',
        5,
        77000.00
    ),
    (
        'Samuel Adams',
        'AI Engineer',
        'samuel.adams@email.com',
        8,
        96000.50
    ),
    (
        'Tina Allen',
        'Civil Engineer',
        'tina.allen@email.com',
        6,
        72000.75
    ),
    (
        'Umar Baker',
        'Network Engineer',
        'umar.baker@email.com',
        5,
        68000.00
    ),
    (
        'Victoria Nelson',
        'Software Engineer',
        'victoria.nelson@email.com',
        7,
        81000.50
    ),
    (
        'William Carter',
        'Mechanical Engineer',
        'william.carter@email.com',
        8,
        85000.75
    ),
    (
        'Xavier Perry',
        'AI Engineer',
        'xavier.perry@email.com',
        9,
        97000.00
    ),
    (
        'Yasmine Foster',
        'Software Engineer',
        'yasmine.foster@email.com',
        4,
        71000.25
    ),
    (
        'Zachary Evans',
        'Electrical Engineer',
        'zachary.evans@email.com',
        6,
        76000.50
    ),
    (
        'Aaron Hughes',
        'Civil Engineer',
        'aaron.hughes@email.com',
        5,
        73000.75
    ),
    (
        'Bella Simmons',
        'Data Engineer',
        'bella.simmons@email.com',
        7,
        88000.00
    ),
    (
        'Chris Morgan',
        'Network Engineer',
        'chris.morgan@email.com',
        4,
        69000.50
    ),
    (
        'Diana Russell',
        'AI Engineer',
        'diana.russell@email.com',
        10,
        99000.75
    ),
    (
        'Ethan Thomas',
        'Full Stack Engineer',
        'ethan.thomas@email.com',
        3,
        61000.00
    ),
    (
        'Sophia Lee',
        'Frontend Engineer',
        'sophia.lee@email.com',
        4,
        65000.00
    ),
    (
        'Liam Johnson',
        'Backend Engineer',
        'liam.johnson@email.com',
        5,
        72000.00
    ),
    (
        'Olivia Brown',
        'DevOps Engineer',
        'olivia.brown@email.com',
        6,
        80000.00
    ),
    (
        'Noah Wilson',
        'Cloud Engineer',
        'noah.wilson@email.com',
        7,
        87000.00
    ),
    (
        'Emma Davis',
        'Security Engineer',
        'emma.davis@email.com',
        8,
        90000.00
    ),
    (
        'Mason Miller',
        'AI/ML Engineer',
        'mason.miller@email.com',
        5,
        95000.00
    ),
    (
        'Isabella Garcia',
        'Data Engineer',
        'isabella.garcia@email.com',
        4,
        88000.00
    ),
    (
        'James Martinez',
        'Embedded Systems Engineer',
        'james.martinez@email.com',
        6,
        86000.00
    ),
    (
        'Charlotte Anderson',
        'Software Architect',
        'charlotte.anderson@email.com',
        9,
        105000.00
    );

-- Verify the inserted data
SELECT * FROM table5;

SELECT * FROM table6_tasks;

-- Inserting 30 task entries into table6_tasks
INSERT INTO
    table6_tasks (
        task_name,
        task_description,
        employee_id
    )
VALUES (
        'Develop Backend API',
        'Design and implement RESTful API endpoints.',
        1
    ),
    (
        'Frontend UI Design',
        'Create responsive UI components using React.',
        2
    ),
    (
        'Database Optimization',
        'Optimize SQL queries and database indexing.',
        3
    ),
    (
        'Server Deployment',
        'Deploy application on AWS cloud infrastructure.',
        4
    ),
    (
        'Cybersecurity Audit',
        'Perform security assessment and vulnerability testing.',
        5
    ),
    (
        'Machine Learning Model',
        'Develop predictive analytics model for customer data.',
        6
    ),
    (
        'Data Pipeline Setup',
        'Create ETL pipeline for data processing.',
        7
    ),
    (
        'Embedded Systems Programming',
        'Write firmware for IoT devices.',
        8
    ),
    (
        'System Architecture Design',
        'Plan scalable microservices architecture.',
        9
    ),
    (
        'Game Engine Development',
        'Optimize rendering engine for high FPS.',
        10
    ),
    (
        'CI/CD Pipeline Setup',
        'Automate build and deployment process.',
        11
    ),
    (
        'Cloud Migration',
        'Migrate on-premise services to cloud.',
        12
    ),
    (
        'Penetration Testing',
        'Simulate cyber attacks to find vulnerabilities.',
        13
    ),
    (
        'AI Chatbot Development',
        'Implement AI chatbot for customer support.',
        14
    ),
    (
        'Data Warehouse Design',
        'Set up a data warehouse for analytics.',
        15
    ),
    (
        'Networking Setup',
        'Configure routers and firewalls for secure access.',
        16
    ),
    (
        'Mobile App Development',
        'Develop cross-platform mobile application.',
        17
    ),
    (
        'Backend Refactoring',
        'Improve performance of backend services.',
        18
    ),
    (
        '3D Game Animation',
        'Create character animations using Unity.',
        19
    ),
    (
        'IoT Sensor Integration',
        'Connect IoT sensors to cloud analytics.',
        20
    ),
    (
        'Software Testing',
        'Perform unit and integration testing.',
        21
    ),
    (
        'Automation Scripting',
        'Write scripts for automating daily tasks.',
        22
    ),
    (
        'IT Infrastructure Upgrade',
        'Upgrade internal IT infrastructure.',
        23
    ),
    (
        'API Gateway Setup',
        'Implement API gateway for microservices.',
        24
    ),
    (
        'Edge Computing Implementation',
        'Deploy edge computing solutions.',
        25
    ),
    (
        'Customer Portal Development',
        'Develop self-service customer web portal.',
        26
    ),
    (
        'Blockchain Smart Contracts',
        'Develop Ethereum smart contracts.',
        27
    ),
    (
        'Load Balancer Configuration',
        'Optimize traffic distribution with load balancer.',
        28
    ),
    (
        'Distributed Systems Debugging',
        'Identify and fix issues in distributed systems.',
        29
    ),
    (
        'Real-Time Analytics Dashboard',
        'Create a dashboard for real-time analytics.',
        30
    );

CREATE TABLE table7 (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    domain VARCHAR(20) CHECK (
        domain IN (
            'Full Stack',
            'Backend',
            'Frontend'
        )
    ),
    email VARCHAR(50) UNIQUE NOT NULL,
    experience INT CHECK (experience >= 0),
    salary DECIMAL(10, 2) CHECK (salary > 0)
);

CREATE TABLE table8 (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(100) NOT NULL,
    task_description TEXT NOT NULL,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES table7 (employee_id) ON DELETE CASCADE
);

INSERT INTO
    table7 (
        employee_name,
        domain,
        email,
        experience,
        salary
    )
VALUES (
        'Alice Johnson',
        'Full Stack',
        'alice.johnson@email.com',
        5,
        75000.00
    ),
    (
        'Bob Smith',
        'Backend',
        'bob.smith@email.com',
        6,
        72000.50
    ),
    (
        'Charlie Brown',
        'Frontend',
        'charlie.brown@email.com',
        4,
        68000.75
    ),
    (
        'David Williams',
        'Full Stack',
        'david.williams@email.com',
        7,
        81000.00
    ),
    (
        'Eve Davis',
        'Backend',
        'eve.davis@email.com',
        5,
        76000.25
    ),
    (
        'Frank Miller',
        'Frontend',
        'frank.miller@email.com',
        3,
        64000.50
    ),
    (
        'Grace Wilson',
        'Full Stack',
        'grace.wilson@email.com',
        8,
        88000.75
    ),
    (
        'Henry Moore',
        'Backend',
        'henry.moore@email.com',
        10,
        95000.00
    ),
    (
        'Isabella Taylor',
        'Frontend',
        'isabella.taylor@email.com',
        6,
        70000.50
    ),
    (
        'Jack White',
        'Full Stack',
        'jack.white@email.com',
        4,
        73000.75
    ),
    (
        'Katie Harris',
        'Backend',
        'katie.harris@email.com',
        5,
        77000.00
    ),
    (
        'Leo Martin',
        'Frontend',
        'leo.martin@email.com',
        3,
        65000.50
    ),
    (
        'Mia Clark',
        'Full Stack',
        'mia.clark@email.com',
        6,
        78000.75
    ),
    (
        'Noah Walker',
        'Backend',
        'noah.walker@email.com',
        7,
        82000.00
    ),
    (
        'Olivia Scott',
        'Frontend',
        'olivia.scott@email.com',
        5,
        71000.25
    ),
    (
        'Paul Hall',
        'Full Stack',
        'paul.hall@email.com',
        9,
        92000.50
    ),
    (
        'Quincy Young',
        'Backend',
        'quincy.young@email.com',
        2,
        60000.75
    ),
    (
        'Rachel King',
        'Frontend',
        'rachel.king@email.com',
        5,
        73000.00
    ),
    (
        'Samuel Adams',
        'Full Stack',
        'samuel.adams@email.com',
        8,
        89000.50
    ),
    (
        'Tina Allen',
        'Backend',
        'tina.allen@email.com',
        6,
        76000.75
    ),
    (
        'Umar Baker',
        'Frontend',
        'umar.baker@email.com',
        5,
        70000.00
    ),
    (
        'Victoria Nelson',
        'Full Stack',
        'victoria.nelson@email.com',
        7,
        85000.50
    ),
    (
        'William Carter',
        'Backend',
        'william.carter@email.com',
        8,
        87000.75
    ),
    (
        'Xavier Perry',
        'Frontend',
        'xavier.perry@email.com',
        9,
        92000.00
    ),
    (
        'Yasmine Foster',
        'Full Stack',
        'yasmine.foster@email.com',
        4,
        74000.25
    );

INSERT INTO
    table8 (
        task_name,
        task_description,
        employee_id
    )
VALUES (
        'Develop Full Stack Feature',
        'Implement a new user dashboard.',
        1
    ),
    (
        'Optimize Database Queries',
        'Improve SQL queries for backend performance.',
        2
    ),
    (
        'Create Responsive UI',
        'Design mobile-friendly components.',
        3
    ),
    (
        'API Development',
        'Develop RESTful APIs for the application.',
        4
    ),
    (
        'Server Maintenance',
        'Monitor and maintain backend servers.',
        5
    ),
    (
        'Frontend Animations',
        'Add animations for a better UI experience.',
        6
    ),
    (
        'Refactor Codebase',
        'Optimize existing Full Stack code.',
        7
    ),
    (
        'Database Migration',
        'Migrate database from MySQL to PostgreSQL.',
        8
    ),
    (
        'UI Accessibility Enhancements',
        'Improve UI accessibility for all users.',
        9
    ),
    (
        'Code Review and Testing',
        'Perform detailed code review.',
        10
    ),
    (
        'Backend Caching',
        'Implement Redis for faster backend processing.',
        11
    ),
    (
        'CSS Improvements',
        'Fix UI issues and enhance styling.',
        12
    ),
    (
        'Security Audit',
        'Identify and fix security vulnerabilities.',
        13
    ),
    (
        'Optimize Backend Performance',
        'Enhance backend response times.',
        14
    ),
    (
        'Add Frontend Components',
        'Build reusable UI components.',
        15
    ),
    (
        'Microservices Implementation',
        'Split monolithic app into microservices.',
        16
    ),
    (
        'Backend Logging Setup',
        'Improve logging for API requests.',
        17
    ),
    (
        'React State Management',
        'Optimize Redux store management.',
        18
    ),
    (
        'Add New Authentication Method',
        'Implement OAuth for secure login.',
        19
    ),
    (
        'Improve API Documentation',
        'Write Swagger documentation.',
        20
    ),
    (
        'Refactor Frontend Code',
        'Organize and clean up JavaScript code.',
        21
    ),
    (
        'Add New Dashboard Features',
        'Enhance dashboard with analytics.',
        22
    ),
    (
        'Optimize Queries for Reports',
        'Improve report generation time.',
        23
    ),
    (
        'Update UI Theme',
        'Apply new theme for a fresh look.',
        24
    ),
    (
        'Dockerize Application',
        'Create a Docker setup for deployment.',
        25
    );

SELECT
    employee_name,
    task_name,
    task_description
FROM table8
    JOIN table7 ON table8.employee_id = table7.employee_id;