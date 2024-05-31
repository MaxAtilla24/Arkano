

CREATE TABLE cpQ1
( SELECT cp.Producto,
         cp.Subproducto,
        COUNT (ID_Complaint) AS countQ1
FROM Complaints cp
WHERE DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 1
GROUP BY
cp.Producto,cp.Subproducto ) 
;GO

CREATE TABLE cpQ2
( SELECT cp.Producto,
         cp.Subproducto,
        COUNT (ID_Complaint) AS countQ1
FROM Complaints cp
WHERE DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 2
GROUP BY
cp.Producto,cp.Subproducto ) 
;GO

CREATE TABLE cpQ3
( SELECT cp.Producto,
         cp.Subproducto,
        COUNT (ID_Complaint) AS countQ1
FROM Complaints cp
WHERE DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 3
GROUP BY
cp.Producto,cp.Subproducto ) 
;GO

CREATE TABLE cpQ4
( SELECT cp.Producto,
         cp.Subproducto,
        COUNT (ID_Complaint) AS countQ1
FROM Complaints cp
WHERE DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 4
GROUP BY
cp.Producto,cp.Subproducto ) 
;GO

SELECT
Producto,
Subproducto,
countQ1.cpQ1 AS Q1,
countQ1.cpQ2 AS Q2,
countQ1.cpQ3 AS Q3,
countQ1.cpQ4 AS Q4,
FROM CPQ1

GROUP BY
cp.Producto,cp.Subproducto

