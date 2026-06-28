-- Exploratory Data Analysis

SELECT*
FROM NO_DUP_DATA;

-- CHECKING THE MIN, MAX , AVG OF DATA 

SELECT MAX(total_laid_off) max_TLO,
MIN(total_laid_off) min_TLO,
AVG(total_laid_off) avg_TLO
FROM NO_DUP_DATA; 

SELECT MAX(percentage_laid_off) max_PLO,
MIN(percentage_laid_off) min_PLO,
AVG(percentage_laid_off) avg_PLO
FROM NO_DUP_DATA; 

SELECT MAX(funds_raised_millions) max_fund,
MIN(funds_raised_millions) min_fund,
AVG(funds_raised_millions) avg_fund
FROM NO_DUP_DATA;

#CONC:
-- max_TLO, min_TLO, avg_TLO(12000 BY GOOGLE , 3, 237.2659)
-- max_PLO, min_PLO, avg_PLO(1, 0, 0.25)
-- max_fund, min_fund, avg_fund(121900, 0, 875.10)

-- CHECLING COMPANY WITH HIGESST PLO  & FUND RAISE

SELECT*
FROM NO_DUP_DATA
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC ;

-- FINDING SUM OF TLO COMPANY WISE BY GROUPING THEM ALL

SELECT company, SUM(total_laid_off) sum_TLO
FROM NO_DUP_DATA
GROUP BY company 
ORDER BY sum_TLO DESC;

#CONC:
-- AMAZON AND GOOGLE LET GO OF THE MOST PEOPLE 
-- RANKING:
#1 - AMAZON (18150)
#2 - GOOGLE (12000) MAX*
-- WHERE BRANCH COMPANY WITH MIN PEOPLE i.e. ONLY 3


-- FINDING SUM OF TLO INDUSTY WISE BY GROUPING THEM ALL

SELECT industry, SUM(total_laid_off) sum_TLO
FROM NO_DUP_DATA
GROUP BY industry 
ORDER BY sum_TLO DESC;

-- FINDING SUM OF TLO COUNTRY WISE BY GROUPING THEM ALL

SELECT country, SUM(total_laid_off) sum_TLO
FROM NO_DUP_DATA
GROUP BY country 
ORDER BY sum_TLO DESC;

#CONC:
-- United States recorded the highest number of layoffs, followed by India.
-- RANKING:
#1 - U.S (256559)
#2 - INDIA (35993)


-- CHECKING TIME OF THE LAYOFFS IN COMPANY

SELECT MAX(`date`) last_date,
MIN(`date`) int_date
FROM NO_DUP_DATA; 

#CONC:
-- DATE IS B/W 11-03-2020 TO 06-03-20223
-- IThe dataset mainly covers layoffs between 2020 and early 2023
-- which overlaps with the COVID-19 period and the post-pandemic tech slowdown. 

-- FINDING TOATAL LAYOFF BY DATE, MONTH & YEAR WISE 

-- DATE WISE 

SELECT `date`, SUM(total_laid_off) sum_TLO
FROM NO_DUP_DATA
GROUP BY `date`
ORDER BY sum_TLO DESC;

#CONC:
-- 4/1/2023 - 16171
-- 20/1/2023 - 14682
-- 18/01/2023 - 11987


-- MONTH WISE 

SELECT MONTH(`date`), SUM(total_laid_off) sum_TLO
FROM NO_DUP_DATA
GROUP BY MONTH(`date`) 
ORDER BY sum_TLO DESC;

#CONC:

-- JANUARY - (92037) WITH HIGHEST LAYOFF MONTH
-- SEPTEMBER - (6651) WITH LEAST LAYOFF


-- YEAR WISE

SELECT YEAR(`date`), SUM(total_laid_off) sum_TLO
FROM NO_DUP_DATA
GROUP BY YEAR(`date`) 
ORDER BY sum_TLO DESC;

#CONC: 
-- YEAR 2022 MAKES THE MAXIMUM WITH (160661) PEOPLE LAYOFF
-- BUT IN DATA WE HAVE ONLY 3 STARTING MOINTHS OFF 2023 AND THE LAYOFF DATA IS ALMOST 125000+alter
-- i.e. MAY BE 2023 IS MAKE MORE LAYOFF OF PEOPLE AS COMPARE TO 2022





