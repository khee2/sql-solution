-- ECOLI_DATA 테이블에서 PARENT_ID가 ID인 개수 출력
SELECT ID, (SELECT COUNT(*) FROM ECOLI_DATA WHERE PARENT_ID = ED.ID) AS CHILD_COUNT
FROM ECOLI_DATA ED
ORDER BY ID