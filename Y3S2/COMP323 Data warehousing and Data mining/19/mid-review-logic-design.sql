-- Q1
SELECT D.YEAR, SUM(S.RECEIPTS)
FROM SALES S, DATE D
WHERE S.KEYD = D.KEYD
GROUP BY D.YEAR;

-- Q2
SELECT D.MONTH, SUM(S.RECEIPTS)
FROM SALES S, DATE D
WHERE S.KEYD = D.KEYD AND D.YEAR = '2012'
GROUP BY D.MONTH;

-- Q3
SELECT SA.RECEIPTS
FROM SALES SA, DATE DA, STORE ST, PRODUCT PR
WHERE SA.KEYD = DA.KEYD AND SA.KEYS = ST.KEYS AND SA.KEYP = PR.KEYP AND DA.YEAR = '2012';

-- Q4
SELECT D.MONTH, AVG(S.RECEIPTS)
FROM SALES S, DATE D, PRODUCT P
WHERE S.KEYD = D.KEYD AND D.YEAR = '2012' AND P.TYPE = 'SOFT DRINK'
GROUP BY D.MONTH;

-- Q5
SELECT PRODUCT, SUM(S.QUANTITY) AS QTY
FROM SALES S, PRODUCT P
WHERE S.KEYP = P.KEYP AND P.TYPE = 'SOFT DRINK'
ORDER BY QTY DESC;