# Pewlett-Hackard-Analysis
SQL Analysis

## Overview of the analysis
In this project we will perform an analysis that will help  Pewlett-Hackard face in an efficient and accurate way the ‘’silver tsunami”, which in other words describes the significant amount of employees that are reaching retirement age, this in consequence will lead the company to find options to fill out the positions in a fashionable time and smooth transition.

To accomplish this task we will help Bobby analyze PH employee database  to determine how many people will be retiring and, of those employees, who is eligible for a retirement package, as well as determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program that aims at making the transition for both, the future retirees and new staff.


## Results: 
After analyzing PH employee database we summarize our findings in the following tables.



### Retirement titles										
This table  holds all the titles of employees who were born between January 1, 1952 and December 31, 1955 and are approaching retirement, as well as the dates where they started, stopped and continue working for PH.



![Retirement_titles](https://github.com/ARobles127/Pewlett-Hackard-Analysis/blob/main/Retirement_titles.png)




### Unique Titles										
Our previous table showcasted all employees ready to retire but some of them had held different titles throughout their professional career in PH. And some more are no longer working for PH.The following table removes the duplicate entries and only  keeps the current employees.   
- Total number of employees approaching retirement: 72458. 	


            	
![Unique_titles](https://github.com/ARobles127/Pewlett-Hackard-Analysis/blob/main/Unique_titles.png)




### Retiring Titles
The following table contains the number of employees retiring from each specific position.										
- Positions with the highest number of vacancies are: Senior engineer with 25916, and Senior Staff with 24926.
- The manager position will only have 2 employees retiring.



![Retiring_titles](https://github.com/ARobles127/Pewlett-Hackard-Analysis/blob/main/Retiring_titles.png)




### Mentorship Eligibility
This table helps  identify employees who are eligible to participate in a mentorship program. 										 
- Total number of eligible participants: 1,549. 



![Mentorship_eligibility](https://github.com/ARobles127/Pewlett-Hackard-Analysis/blob/main/Mentorship_eligibility.png)




## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact? 72,458 roles need to be filled before employees start the retirement process. 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? There are 72,458 employees ready to retire and the number of qualified personnel  that could be mentored is significantly lower, 1,549, which means that there will be enough qualified  retirement-ready employees that could switch to part time to allow the new hires or internal promotions to step into the new roles with confidence. The following query helps us to pull a table with the number of  the titles and number of potential employees that could participate in the mentorship program. 

```
select count (title), title
from mentorship_eligibility
group by title
order by count desc;
```

![Potential_mentorship]()
