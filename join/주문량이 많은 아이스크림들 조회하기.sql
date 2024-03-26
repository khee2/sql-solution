SELECT flavor
FROM (
         SELECT f.flavor, SUM(f.total_order) AS total
         FROM (
                  SELECT * FROM first_half
                  UNION ALL
                  SELECT * FROM july
              ) f
         GROUP BY f.flavor
         ORDER BY total DESC
     )
WHERE ROWNUM <= 3;