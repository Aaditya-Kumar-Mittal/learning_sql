USE testdb;

CREATE VIEW engineer_info AS
SELECT
    engineer_id,
    engineer_name,
    email
FROM table5;

SELECT * FROM engineer_info;

-- Update The VIEW

CREATE OR REPLACE VIEW engineer_info AS
SELECT engineer_name, email FROM table5;

SELECT * FROM engineer_info;

-- Delet the VIEW
DROP VIEW engineer_info;