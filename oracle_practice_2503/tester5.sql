-- 형 변환 함수
-- 현재 날짜를 기본 형식과 다른 형태로 출력하기
SELECT SYSDATE, TO_CHAR(SYSDATE, 'YYYY-MM-DD') FROM DUAL;
-- 사원들의 입사일을 출력하되 요일까지 함께 출력하기
SELECT hiredate, TO_CHAR(hiredate, 'YYYY-MM-DD DAY') FROM emp;
-- 현재 날짜와 시간을 출력하기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, AM HH:MI:SS') FROM DUAL;
-- 통화 기호를 붙여 출력하기
SELECT SYSDATE, TO_CHAR(1230000), TO_CHAR(1230000, 'L999,999,999') FROM DUAL;
-- 빈 여백을 0으로 채우기
SELECT SYSDATE, TO_CHAR(123456, '00000000'), TO_CHAR(123456, '999,999,999') FROM DUAL;
-- 2007년 4월 2일에 입사한 사원을 검색하기 위해서, 수치 데이터를 제시
-- SELECT ename, hiredate FROM emp WHERE hiredate = 20070402; (X)
SELECT ename, hiredate FROM emp WHERE hiredate = TO_DATE(20070402, 'YYYYMMDD');
-- 올해 며칠이 지났는지 알아보기 19/01/01
-- SELECT SYSDATE - '2019/01/01' FROM DUAL;(X)
SELECT TRUNC(SYSDATE - TO_DATE('2019/01/01', 'YYYY/MM/DD')) FROM DUAL;
-- 20,000과 10,000의 차이 값을 알아보기 위해서 빼기
-- SELECT '20,000' - '10,000' FROM DUAL;(X)
SELECT TO_NUMBER('20,000', '99,000') - TO_NUMBER('10,000', '99,000') FROM DUAL;
--현재 날짜 알아보기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') FROM DUAL;
-- 현재 날짜를 기준으로 어제와 내일의 날짜
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') 어제,
    TO_CHAR(SYSDATE, 'YYYY/MM/DD') 오늘,
    TO_CHAR(SYSDATE+1, 'YYYY/MM/DD') 내일 FROM DUAL;
-- 특정 날짜(DATE)를 달(MONTH)을 기준으로 버리기
SELECT TO_CHAR(hiredate, 'YYYY/MM/DD') 입사일,
    TO_CHAR(TRUNC(hiredate, 'MARCH'), 'YYYY/MM/DD') 입사일 FROM emp;
-- 날짜 사이의 개월 수 구하기
SELECT ename, SYSDATE 오늘, TO_CHAR(hiredate, 'YYYY/MM/DD') 입사일,
    TRUNC(MONTH_BETWEEN (SYSDATE, hiredate)) 근무달수 FROM emp;
-- 입사 날짜에 6개월을 추가하기
SELECT ename, TO_CHAR(hiredate, 'YYYY/MM/DD') 입사일,
    TO_CHAR(ADD_MONTH(hiredate, 6), 'YYYY/MM/DD') "입사 6개월 후" FROM emp;
-- 입사한 달의 마지막 날을 구하기
SELECT ename, TO_CHAR(hiredate, 'YYYY/MM/DD') 입사일,
    TO_CHAR(LAST_DAY(hiredate), 'YYYY/MM/DD') "마지막 날짜" FROM emp;