SELECT * FROM Angela.STEP4_17_16

UPDATE Angela.STEP4_17_16
SET CNTY = 035
FROM Angela.STEP4_17_16
WHERE CNTY = 35

-- lost units by county
SELECT DISTINCT CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
Where units < 0 and ISSUEDYEAR = 2017
GROUP BY CNTY

-- new units by county
SELECT DISTINCT CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
Where units > 0 and ISSUEDYEAR = 2017
GROUP BY CNTY

-- net units by county
SELECT DISTINCT CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
Where ISSUEDYEAR = 2017
GROUP BY CNTY

-- there are three permits has 0 unit recorded in 2017 issue year - will fix it later 
SELECT * 
FROM Angela.STEP4_17_16
WHERE UNITS = 0 AND ISSUEDYEAR = 2017


-- diff unit type 
-- SF 
SELECT CNTY, [TYPE4], SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017
GROUP BY CNTY, TYPE4



-- units by county 
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017
GROUP BY JURIS17, CNTY
ORDER BY JURIS17


-- losing unit 
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and UNITS < 0
GROUP BY JURIS17, CNTY
ORDER BY JURIS17


-- NEW unit 
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and UNITS > 0
GROUP BY JURIS17, CNTY
ORDER BY JURIS17

-- SF
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'SF'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17

-- MF1-2
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MF1-2'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17

-- MF3-4
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MF3-4'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17

-- MF5-9
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MF5-9'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17


-- MF10-19
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MF10-19'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17



-- MF20-49
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MF20-49'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17


-- MF50+
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MF50+'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17



-- MH
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'MH'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17



-- MH
SELECT JURIS17, CNTY, SUM(UNITS)
FROM Angela.STEP4_17_16
WHERE ISSUEDYEAR = 2017 and TYPE4 = 'OTH'
GROUP BY JURIS17, CNTY
ORDER BY JURIS17



SELECT DISTINCT JURIS17
FROM Angela.STEP4_17_16
WHERE PROJYEAR = 2017 AND JURIS17 LIKE 'B%'








