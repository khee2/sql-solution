-- 1. Python기술에 해당하는 비트 코드를 가져온 후 SKILL_CODE과 &비트 연산을 한다.
-- SKILL_CODE에 파이썬 기술이 있는 경우 0이 아닌 값이 출력된다.
-- 2. C#도 마찬가지로 수행한다.
-- 3. 파이썬 또는 C# 기술이 있는 개발자의 정보(ID, EMAIL, FIRST_NAME, LAST_NAME)들을 가져온다.
-- 4. ID로 오름차순 정렬한다.
SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM
    DEVELOPERS
WHERE SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python') OR
        SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#')
ORDER BY
    ID