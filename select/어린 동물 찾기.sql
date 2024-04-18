SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID

-- 다른 풀이: `WHERE INTAKE_CONDITION <> 'Aged'`
-- != 는 <>로 자동 변환되어 사용되므로 둘 중에 아무거나 써도 된다.