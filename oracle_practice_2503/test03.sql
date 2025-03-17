-- 그룹 활동과 싱글 활동을 하는 가수 이름 출력
SELECT * FROM group_star;
SELECT * FROM single_star;
SELECT * FROM group_star UNION SELECT * FROM single_star; -- UNION 합집합
-- 그룹 활동과 싱글 활동을 하는 가수 이름을 중복
SELECT * FROM group_star UNION ALL SELECT * FROM single_star;
-- 그룹 활동과 싱글 활동을 동시에 하는 가수 이름을 출력
SELECT * FROM group_star INTERSECT SELECT * FROM single_star; -- INTERSECT 교집합
-- 그룹 활동만 하는 가수 이름을 출력
SELECT * FROM group_star MINUS SELECT * FROM single_star; -- MINUS 차집합
-- 싱글 활동만 하는 가수 이름을 출력
SELECT * FROM single_star MINUS  SELECT * FROM group_star;



