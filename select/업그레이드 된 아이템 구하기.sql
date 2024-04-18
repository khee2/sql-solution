-- 풀이1. JOIN 사용 X
-- 1. ITEM_ID와 PARENT_ITEM_ID를 비교한 후 같으면 TREE테이블에서 ITEM_ID를 가져온다. (여러 개일수 있음)
-- 2. ITEM_INFO에서 해당 ITEM_ID를 가지는 행의 ITEM_NAME, PARITY을 추출한다.
SELECT
    ITEM_ID,
    ITEM_NAME,
    RARITY
FROM
    ITEM_INFO
WHERE ITEM_ID IN (SELECT IT.ITEM_ID
                  FROM ITEM_TREE IT
                  WHERE IT.PARENT_ITEM_ID IN (SELECT II.ITEM_ID
                                              FROM ITEM_INFO II
                                              WHERE II.RARITY = 'RARE'))
ORDER BY
    ITEM_ID DESC

-- 풀이2. JOIN 사용
SELECT
    IT.ITEM_ID,
    II.ITEM_NAME,
    II.RARITY
FROM
    ITEM_INFO II JOIN ITEM_TREE IT USING(ITEM_ID)
WHERE
        IT.PARENT_ITEM_ID IN (SELECT ITEM_ID
                              FROM ITEM_INFO
                              WHERE RARITY = 'RARE')
ORDER BY
    it.ITEM_ID DESC