/*
    <숫자 관련 함수>
    
    1) ABS
        - ABS(NUBER)
        - 절대값을 구하는 함수
*/

SELECT ABS(10.9), ABS(-10.9) FROM DUAL;

/*
    2) MOD
        - MOD(NUMBER, NUMBER)
        - 두 수를 나눈 나머지를 반환해 주는 함수 (자바의 % 연산과 동일하다.)
*/

SELECT MOD(10,3) FROM DUAL;
SELECT MOD(10.9, 3) FROM DUAL;

/*
    3) ROUND
        - ROUND(NUMBER[, 위치])
        - 위치를 지정하여 반올림해주는 함수
        - 위치 : 기본값 0(.), 양수(소수점 기준으로 오른쪽)와 음수(소수점 기준으로 왼쪽)로 입력가능
*/
-- 버림
SELECT ROUND(123.456) FROM DUAL;
-- 올림
SELECT ROUND(123.556, 2) FROM DUAL;
-- 반올림하여 위치만큼 보여줌
-- 양수인경우 소수점의 지정위치 다음에 있는 자리를 반올림
SELECT ROUND(123.556, 2) FROM DUAL;
-- 음수인 경우 양수부의 지정위치에서 반올림
SELECT ROUND(123.556, -2) FROM DUAL;
-- 천단위 반올림
SELECT ROUND(123456, -3) FROM DUAL;

/*
    4) CEIL
        - CEIL(NUMBER)
        - 소수점 기준으로 올림해주는 함수
*/
/*
    5) FLOOR
        - FLOOR(NUMBER)
        - 소수점 기준으로 버림하는 함수
*/
-- 올림, 버림 함수의 경우 매개변수는 하나만 입력이 가능
-- ORA-00909 : 인수의 개수가 부적합 합니다.
SELECT CEIL(123.456) FROM DUAL;

/*
    6) TRUNC
        - TRUNC(NUMBER[, 위치])
        - 위치를 지정하여 버림이 가능한 함수
        - 위치 : 기본값 0(.), 양수(소수점 기준으로 오른쪽)와 음수(소수점 기준으로 왼쪽)로 입력가능
*/
SELECT TRUNC(123.456, -1) FROM DUAL;

/*
    <날짜 관련 함수>
    
    1) SYSDATE
        시스템의 현재 날짜와 시간을 반환한다.
*/
SELECT SYSDATE FROM DUAL;

/* 
    2) MONTHS_BETWEEN
        [표현법]
            MONTHS_BETWEEN(DATE1, DATE2)
            
        - 입력받은 두 날짜 사이의 개월 수를 반환한다.
        - 결과값은 NUMBER 타입이다.
*/ 
SELECT MONTHS_BETWEEN(SYSDATE, SYSDATE) FROM DUAL;
SELECT MONTHS_BETWEEN(SYSDATE, '2024/03/01') FROM DUAL;
SELECT FLOOR (MONTHS_BETWEEN(SYSDATE, TO_DATE('2021/03/01')))||'개월' FROM DUAL;
SELECT TO_DATE('2021/03/01') FROM DUAL;

-- EMP 테이블에서 직원명, 입사일, 근무개월수
SELECT EMP_NAME, HIRE_DATE, FLOOR(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) 근무개월수
FROM EMP;

/*
    3) ADD_MONTHS
        [표현법]
            ADD_MONTHS(DATE, NUMBER)
            
        - 특정 날짜에 입력받는 숫자만큼의 개월 수를 더한 날짜를 리턴한다.
        - 결과값은 DATE 타입이다.
*/
SELECT ADD_MONTHS(SYSDATE, 6) FROM DUAL;
SELECT ADD_MONTHS(SYSDATE, 8) FROM DUAL;
SELECT ADD_MONTHS('2020/12/31', 2) FROM DUAL;

