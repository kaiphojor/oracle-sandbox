--1일이 몇 분인지 환상
-- 24* 60
SELECT 24 * 60 FROM DUAL; --DUAL 가상의 TABLE 
SELECT * FROM DUAL;
SELECT SYSDATE FROM DUAL;

--숫자 함수 
SELECT -10, ABS(-10) FROM DUAL; --절대값
SELECT 34.5678, FLOOR(34.5678) FROM DUAL;--소수점 버림
SELECT 34.5678, ROUND(34.5678) FROM DUAL;--소수점 반올림
SELECT 34.5678, ROUND(34.5678,2) FROM DUAL;--소수점 반올림 소수점 2번째 자리까지 
SELECT 34.5678, ROUND(34.5678,0) FROM DUAL;--소수점 반올림 1의 자리까지 

SELECT 34.5678, TRUNC(34.5678,2), TRUNC(34.5678,-1), TRUNC(34.5678,0) FROM DUAL;-- 특정 자릿수에서 잘라내기
SELECT MOD(27,2), MOD(27,5), MOD(27,7) FROM DUAL;

-- 문자 처리 함수 
-- 대소문자 변환함수 사용하기
SELECT 'Welcome to Oracle', UPPER('Welcome to Oracle'), LOWER('Welcome to Oracle'), INITCAP('Welcome to Oracle') FROM DUAL; --문자열 처리

--영문자 한글 길이 구하기
SELECT LENGTH('Oracle'), LENGTH('오라클') FROM DUAL;
SELECT LENGTHB('Oracle'), LENGTHB('오라클') FROM DUAL;
--문자열 일부 추출
SELECT SUBSTR('Welcome to Oracle',4,3) FROM DUAL;--com
SELECT SUBSTR('Welcome to Oracle',-4,3) FROM DUAL;--acl
SELECT SUBSTR('웰컴투동막골',3,4), SUBSTRB('웰컴투동막골',3,4) FROM DUAL;
--O 위치 찾기 공란포함
SELECT INSTR('WELCOME TO ORACLE','O') FROM DUAL;
SELECT INSTR('WELCOME TO ORACLE','O',6,2) FROM DUAL;--시작위치, 순번


