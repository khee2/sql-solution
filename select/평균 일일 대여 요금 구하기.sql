SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'

-- `ROUND(AVG(DAILY_FEE))` 기본값이 0이므로 생략 가능하다.
-- `WHERE CAR_TYPE LIKE 'SUV'` 처럼 LIKE를 써서 비교해도 된다.
-- 차 종류가 SUV밖에 없으므로 굳이 GROUP BY를 하지 않아도 된다. 만약 한다면 마지막 줄에 `group by CAR_TYPE`을 추가한다.