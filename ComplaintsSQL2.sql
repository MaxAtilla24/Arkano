SELECT
Producto,
Subproducto,
CASE 
    WHEN DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 1 THEN "Q1"
    When DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 2 THEN "Q2"
    WHEN DATEPART(qyear,cp.date_received) = 2023 AND DATEPART(quarter,cp.date_received) = 3 THEN "Q3"
    ELSE "Q4" END AS quarter,
Count(ID_Complaint) as Total_complaint

FROM Complaints

GROUP BY
cp.Producto,cp.Subproducto,quarter

ORDER BY Producto, Subproducto, quarter
