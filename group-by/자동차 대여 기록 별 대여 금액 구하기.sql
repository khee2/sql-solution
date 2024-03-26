SELECT CAR_ID, 
(case when car_id in 
 (select car_id 
  from car_rental_company_rental_history
 WHERE '2022-10-16' BETWEEN DATE_FORMAT(START_DATE, '%Y-%m-%d') AND DATE_FORMAT(END_DATE, '%Y-%m-%d')) 
 then "대여중" 
 else "대여 가능" end) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID
order by car_ID desc;