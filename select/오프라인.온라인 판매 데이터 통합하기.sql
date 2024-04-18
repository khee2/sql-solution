-- 오프라인/온라인 상품의 판매 데이터를 각각 출력한 후 UNION으로 합친다. (UNION ALL도 가능)
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE , PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'
UNION
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID

-- `WHERE SALES_DATE LIKE '2022-03%'`의 다른 풀이:
-- `WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 3`
-- `WHERE SALES_DATE >= '2022-03-01' and SALES_DATE < '2022-04-01'`