-- DATETIME을 오름차순 정렬: 오래된 순
-- DATETIME을 내림차순 정렬: 최신순 (숫자가 더 큰 최근 날짜부터)

SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC