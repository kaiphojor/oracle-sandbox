-- Procedural Language for SQL의 약자로, Oracle Database에서 SQL 명령문과 절차적 프로그래밍 언어의 기능을 결합한 프로그래밍 언어입니다. PL/SQL을 사용하면 더 복잡한 데이터베이스 작업과 로직을 구현할 수 있습니다.

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE PUBLISHER CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF; -- 테이블이 없을 경우 무시
END;
/
CREATE TABLE PUBLISHER (
    publisher_id NUMBER PRIMARY KEY, -- 퍼블리셔 ID (고유값)
    name VARCHAR2(100) NOT NULL,     -- 퍼블리셔 이름
    country VARCHAR2(50),            -- 퍼블리셔 국가
    established_year NUMBER          -- 설립 연도
);

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE DEVELOPER CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
CREATE TABLE DEVELOPER (
    developer_id NUMBER PRIMARY KEY, -- 개발사 ID (고유값)
    name VARCHAR2(100) NOT NULL,     -- 개발사 이름
    founded_year NUMBER,             -- 설립 연도
    country VARCHAR2(50),            -- 개발사 국가
    publisher_id NUMBER,             -- 퍼블리셔 ID (외래 키, optional)
    FOREIGN KEY (publisher_id) REFERENCES PUBLISHER(publisher_id)
);

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE GAME CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
CREATE TABLE GAME (
    game_id NUMBER PRIMARY KEY,       -- 게임 ID (고유값)
    title VARCHAR2(100) NOT NULL,     -- 게임 제목
    release_date DATE,                -- 출시 날짜
    genre VARCHAR2(50),               -- 장르
    publisher_id NUMBER,              -- 퍼블리셔 ID (외래 키)
    developer_id NUMBER,              -- 개발사 ID (외래 키)
    FOREIGN KEY (publisher_id) REFERENCES PUBLISHER(publisher_id),
    FOREIGN KEY (developer_id) REFERENCES DEVELOPER(developer_id)
);

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE EMPLOYEE CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
CREATE TABLE EMPLOYEE (
    employee_id NUMBER PRIMARY KEY,  -- 직원 ID (고유값)
    name VARCHAR2(100) NOT NULL,     -- 직원 이름
    position VARCHAR2(50),           -- 직책
    salary NUMBER,                   -- 연봉
    developer_id NUMBER NOT NULL,    -- 소속된 개발사 ID (외래 키)
    FOREIGN KEY (developer_id) REFERENCES DEVELOPER(developer_id)
);
