SELECT * 
FROM `mass-layoffs.layoffs_ds.layoff_tbl` 
LIMIT 1000

-- What it does: This query shows the first 1000 entries from our layoffs data table. It's like looking at the first few pages of a very big book to get an idea of what's inside.

--------------------------------------------------------------
/* DATA CLEANING & FORMATTING */
--------------------------------------------------------------

CREATE TABLE `mass-layoffs.layoffs_ds.cleaned_layoff_tbl` AS
WITH ranked_rows AS (
  SELECT 
    TRIM(REGEXP_REPLACE(Company, r'\s+', ' ')) AS Company,
    TRIM(REGEXP_REPLACE(Location, r'\s+', ' ')) AS Location,
    TRIM(REGEXP_REPLACE(Industry, r'\s+', ' ')) AS Industry,
    Total_Laid_Off,
    Percentage_Laid_Off,
    Date,
    TRIM(REGEXP_REPLACE(Stage, r'\s+', ' ')) AS Stage,
    TRIM(REGEXP_REPLACE(Country, r'\s+', ' ')) AS Country,
    Funds_Raised,
    EXTRACT(YEAR FROM Date) AS Year,  -- Added Year column
    ROW_NUMBER() OVER (PARTITION BY Company, Date ORDER BY Total_Laid_Off DESC) AS row_num
  FROM 
    `mass-layoffs.layoffs_ds.layoff_tbl`
)
SELECT 
  Company,
  Location,
  Industry,
  Total_Laid_Off,
  Percentage_Laid_Off,
  Date,
  Stage,
  Country,
  Funds_Raised,
  Year  -- Include the Year column in the final SELECT
FROM 
  ranked_rows
WHERE 
  row_num = 1;

-- What it does: 
	-- Cleans up names: Removes extra spaces from company names, locations, industries, stages, and countries to make them consistent.
	-- Adds a Year column: Extracts the year from the date to help with yearly analysis.
	-- Removes duplicates: Ensures that each company-date combination appears only once by selecting the entry with the highest number of layoffs if there are duplicates.
	-- Creates a new table: Stores this cleaned and organized data in a new table for easier analysis.

--------------------------------------------------------------
/* EXPLORATORY DATA ANALYSIS */
--------------------------------------------------------------

SELECT * 
FROM `mass-layoffs.layoffs_ds.cleaned_layoff_tbl` 

-- What it does: This query shows all the data from our newly cleaned table. It's like opening the book to see all the cleaned and organized information.


/* WORLD'S LAYOFFS */
--------------------------------------------------------------
/* 1. Total Layoff By Year */
SELECT 
  EXTRACT(YEAR FROM Date) AS Year,
  SUM(Total_Laid_Off) AS Total_Laid_Off
FROM 
  `mass-layoffs.layoffs_ds.cleaned_layoff_tbl`
GROUP BY 
  Year
ORDER BY 
  Year;

-- What it does: Calculates how many people were laid off each year from 2020 to 2023. It's like counting how many pages of layoffs there are each year.

--------------------------------------------------------------
/* 2. Total Layoff By Industry */
SELECT 
  DISTINCT(Industry) AS Industry,
  SUM(Total_Laid_Off) AS Total_Laid_Off
FROM 
  `mass-layoffs.layoffs_ds.cleaned_layoff_tbl`
GROUP BY
  Industry
ORDER BY
  Total_Laid_Off DESC;
  
-- What it does: Sums up all layoffs for each industry to see which sectors were hit the hardest. Think of this like sorting books by genre and seeing which genre has the most pages. 
  
--------------------------------------------------------------
/* 3. Total Layoff By Company */
SELECT 
  DISTINCT(Company) AS Company,
  SUM(Total_Laid_Off) AS Total_Laid_Off
FROM 
  `mass-layoffs.layoffs_ds.cleaned_layoff_tbl`
GROUP BY
  Company
ORDER BY
  Total_Laid_Off DESC;
  
  -- What it does: Shows which companies had the most layoffs. It's like checking which authors wrote the longest books in this series of layoffs.
  
--------------------------------------------------------------
/* 4. Total Layoff By Country */
SELECT 
  DISTINCT(Country) AS Country,
  SUM(Total_Laid_Off) AS Total_Laid_Off
FROM 
  `mass-layoffs.layoffs_ds.cleaned_layoff_tbl`
GROUP BY
  Country
ORDER BY
  Total_Laid_Off DESC;
  
-- What it does: Counts layoffs per country to see which countries experienced the most job losses. Imagine this as tallying how many books from each country are in the library.  
  
--------------------------------------------------------------
/* 5. Total Layoff By Stage */
SELECT 
  DISTINCT(Stage) AS Stage,
  SUM(Total_Laid_Off) AS Total_Laid_Off
FROM 
  `mass-layoffs.layoffs_ds.cleaned_layoff_tbl`
GROUP BY
  Stage
ORDER BY
  Total_Laid_Off DESC;
  
  -- What it does: Analyzes layoffs based on the company's stage of development (like startup, IPO, etc.) to see if certain stages are more vulnerable to layoffs. This is like categorizing books by the phase of the author's career.
