# Analyzing Global Layoffs from 2020 to 2023

---

## Table of Contents
I. [Project Background](#i-project-background)

II. [Data Structure Overview](#ii-data-structure-overview)

III. [Executive Summary](#iii-executive-summary)

IV. [Recommendations](#iv-recommendations)

V. [References](#v-references)

---

## I. Project Background
This project examines layoffs across the globe from 2020 to 2023, providing insights into economic trends, industry impacts, and corporate strategies. By analyzing data on layoffs by year, industry, company, country, and company funding stage, we aim to understand the dynamics of workforce reduction in various contexts. This study identifies patterns, highlights sectors most affected, and offers insights for businesses, policymakers, and job seekers.

Key areas of focus include:
- **_Layoffs by Year_**: Understanding annual trends in workforce reduction.
- **_Industry Impact_**: Identifying which industries have seen the most layoffs.
- **_Company Analysis_**: Mapping layoffs to specific companies to see corporate responses to economic changes.
- **_Geographic Distribution_**: Analyzing how layoffs vary by country, reflecting economic health and policy impact.
- **_Funding Stage Impact_**: Evaluating how a company's maturity affects its layoff decisions.

---

## II. Data Structure Overview

The layoffs dataset as seen below consists of 1 table: Layoffs_Dataset with a total row count of 1,343 records. 

![image](https://github.com/user-attachments/assets/a1bcb4e1-c0ef-415c-9d95-50c7f952f757)


Each table provides different dimensions of the layoff data, with a total of approximately 400,000 layoffs recorded across various categories.

**SQL Queries & Documentation** for data analysis can be found [here](https://github.com/mgmillimeter/Analyzing-Global-Layoffs-from-2020-to-Early-2023/blob/main/World's%20Layoffs.sql).

**Interactive Dashboard** for visualizing this data can be accessed [here](https://public.tableau.com/app/profile/martin.guiller.iii/viz/WorldsLayoffs/Dashboard1).

![World's Layoffs Dashboard](https://github.com/user-attachments/assets/5fe7c5df-db81-4421-9286-7533b4ac4249)

---

## III. Executive Summary

### Overview of Findings

From 2020 to 2023, the landscape of layoffs across various sectors and regions showed significant volatility, with distinct trends emerging:

#### 1. **Layoffs by Year**

- **2022** was a peak year for layoffs with **153,111 employees** affected, suggesting a post-COVID economic recalibration. This can be attributed to the end of government support programs, economic uncertainty, and companies adjusting to new market realities.[](https://www.statista.com/statistics/1127080/worldwide-tech-layoffs-covid-19-biggest/)[](https://news.crunchbase.com/startups/tech-layoffs/)
- **2023** also recorded high layoffs but with a slight decrease from the previous year, indicating ongoing adjustments but at a moderated pace.[](https://news.crunchbase.com/startups/tech-layoffs/)

#### 2. **Layoffs by Industry**

- **Retail** saw the highest number of layoffs, with over **32,000 employees** laid off in 2023 alone, largely due to shifts in consumer behavior and the integration of AI and automation.[](https://www.statista.com/statistics/1126955/worldwide-tech-layoffs-covid-19-industry/)
- **Transportation** and **Consumer sectors** followed with **71,746 layoffs** from 2020 to 2023, driven by changes in demand, automation, and logistical restructuring.[](https://aceyourgrace.medium.com/the-numbers-dont-lie-which-country-and-industry-are-seeing-the-most-layoffs-since-covid-19-ab0d70cefed9)
- **Healthcare, Education, and Finance** experienced fewer layoffs, likely due to their essential nature which sustained demand even during economic downturns.[](https://aceyourgrace.medium.com/the-numbers-dont-lie-which-country-and-industry-are-seeing-the-most-layoffs-since-covid-19-ab0d70cefed9)

#### 3. **Layoffs by Company**

- **Amazon** and **Meta** were among the leading tech companies in terms of layoffs, with Amazon cutting **27,410 jobs** and Meta **21,000** in 2023, reflecting strategic downsizing after aggressive hiring during the peak of the digital boom.[](https://www.nerdwallet.com/article/finance/tech-layoffs)
- Other tech giants like **Google** and **Microsoft** also conducted significant layoffs, suggesting a broader industry trend towards efficiency and cost-cutting.[](https://www.visualcapitalist.com/americas-20-biggest-tech-layoffs-since-2020/)[](https://www.visualcapitalist.com/all-the-major-tech-layoffs-in-2024-so-far/)

#### 4. **Layoffs by Country**

- The **United States** experienced the most layoffs, with over **262,000 tech employees** laid off in 2023, indicative of its large tech sector and the economic pressures faced by major corporations headquartered there.[](https://www.nerdwallet.com/article/finance/tech-layoffs)
- **India** also saw substantial layoffs, possibly due to its significant role in global tech operations and outsourcing.[](https://aceyourgrace.medium.com/the-numbers-dont-lie-which-country-and-industry-are-seeing-the-most-layoffs-since-covid-19-ab0d70cefed9)

#### 5. **Layoffs by Funding Stage**

- **Post-IPO companies** saw the highest volume of layoffs, with **80,000+** layoffs attributed to major companies like Amazon, Meta, and Google, pointing to pressures from public market expectations and shareholder demands for profitability.[](https://news.crunchbase.com/startups/tech-layoffs/)[](https://www.statista.com/statistics/1127080/worldwide-tech-layoffs-covid-19-biggest/)
- **Startups**, particularly those in later funding stages (Series B and beyond), also faced layoffs as venture capital funding slowed, affecting their cash reserves and operational sustainability.[](https://news.crunchbase.com/startups/tech-layoffs/)

---

## IV. Recommendations

**Layoffs by Year:**

- **Monitor Economic Indicators:** Regularly analyze economic signals such as GDP growth, unemployment rates, inflation, and consumer confidence indices. This will help predict when economic conditions might force another wave of layoffs, allowing for proactive measures like hiring freezes or strategic hiring in growth areas.

- **Diversify Business Models:** Companies should consider diversifying into less cyclical industries or services. This could involve expanding product lines, entering new markets, or incorporating service-based models that might be less vulnerable to economic swings.

**Layoffs by Industry:**

- **Invest in Automation Strategically:** Automation should not only be about cost-cutting but also about enhancing productivity and service quality. Companies need to ensure that automation investments are part of a broader strategy that considers the long-term impact on workforce and customer satisfaction.

- **Skill Upgrading Programs:** Implement internal training programs or partner with educational institutions to provide employees with new skills relevant to emerging job roles. This could include training in digital literacy, data analysis, or new operational technologies, helping to retain talent and adapt to industry changes.

**Layoffs by Company:**

- **Flexible Workforce Planning:** Move towards models like gig work, freelance, or part-time positions where feasible. This flexibility can help companies adjust workforce size according to demand without the need for permanent layoffs, maintaining a core of skilled workers who can be scaled up or down.

- **Employee Retention Focus:** Develop a culture of trust and transparency. Implement programs for employee engagement, wellness, and career growth. A focus on retention can reduce voluntary turnover, preserving knowledge and skills within the company even during tough times.

**Layoffs by Country:**

- **Global Economic Strategy:** Understand and leverage global economic trends. For instance, if one economy is slowing down, look for opportunities in regions showing growth. This could mean setting up operations or increasing investments in those areas.

- **Cultural and Regulatory Adaptation:** Adapting to local labor laws, cultural norms, and business practices can make workforce management during downturns more humane and legally compliant. This includes understanding severance expectations, notice periods, and cultural attitudes towards employment.

**Layoffs by Funding Stage:**

- **Funding Diversification:** Reduce reliance on venture capital by exploring crowdfunding, grants, or strategic alliances that might offer more stable or less dilutive funding. This approach can provide a financial cushion during downturns, reducing the pressure to cut jobs.

- **Financial Conservatism Post-IPO:** After going public, companies should adopt a more conservative approach to spending and growth projections. This might include maintaining higher cash reserves, focusing on operational efficiency, and perhaps slower but sustainable growth to meet shareholder expectations without resorting to layoffs.

**General Recommendation:**

- **Predictive Analytics:** Use AI and machine learning to analyze internal and external data to forecast workforce needs. This could involve predicting skill shortages, identifying departments at risk, or anticipating market demand changes. Such insights enable HR to be proactive in workforce adjustments, potentially avoiding or minimizing layoffs by strategic redeployment or reskilling.

---

## V. References

- Original dataset sourced from [here](https://www.kaggle.com/search?q=Layoffs+datasetFileTypes%3Acsv).
- Data analysis tools used: BigQuerySQL, Tableau

---
