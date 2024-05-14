-- 방법1. join 이용
SELECT COUNT(*) AS FISH_COUNT
FROM fish_info as f
         INNER JOIN fish_name_info as n
                    ON f.fish_type = n.fish_type
WHERE n.fish_name in ('BASS', 'SNAPPER')

-- 방법2. 상관 중첩 질의 EXISTS 이용
-- 하위 질의: 양 테이블이 fish_type이 같고, fish_name이 'BASS' or 'SNAPPER'인 경우
-- 상위 질의: 하위 질의가 존재한다면 실행됨
SELECT COUNT(*) AS FISH_COUNT
FROM fish_info as f
WHERE EXISTS(SELECT *
             FROM fish_name_info as n
             WHERE (f.fish_type = n.fish_type)
               AND (n.fish_name IN ('BASS', 'SNAPPER')))
