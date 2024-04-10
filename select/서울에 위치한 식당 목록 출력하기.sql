SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS,
       ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO I JOIN REST_REVIEW R USING(REST_ID)
GROUP BY I.REST_ID
HAVING I.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, I.FAVORITES DESC;

-- 식당의 리뷰 평균 점수를 구한다는 것은 먼저 식당ID를 기준으로 묶어야 한다.
-- 식당 중 서울에 위치한 식당만 골라내려면 HAVING절에 조건을 써주면 된다.
-- 서울에 위치한 식당은 모두 ‘서울’로 시작하므로 %를 뒤에만 써주면 된다.