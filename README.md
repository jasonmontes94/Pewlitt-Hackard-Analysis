# Pewlitt-Hackard-Analysis

## Overview
The purpose of this analysis was to provide our manager the number of retiring employees per title, as well as identifying which employees are eligible to participate in the mentorship program.

## Results

1. According to the retirement_titles table, and before removing duplicate entrees, it takes about 10 years for an employee to reach Senior Staff.
![retirement_titles.png](/Resources/retirement_titles.png)

2. Looking at the unique_titles table, most of the Senior Staff is about to retire.
![unique_titles.png](/Resources/unique_titles.png)

3. As for the titles of employees who are eligible for retirement, only 2 are managers. Perhaps we should start looking for 2 more department heads!
![retiring_titles.png](/Resources/retiring_titles.png)

4. A vast majority of employees who are eligible for the Mentorship Program are going to be retiring.
![mentorship_eligibility.png](/Resources/mentorship_eligibility.png)

## Summary

*How many roles will need to be filled as the "silver tsunami" begins to make an impact?*

When we created the Retiring Titles table, it provided us with the number of total retiring employees. We could alter this query to include the total number of retirees, which would show 72,458 employees set to retire.

*Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlitt Hackard employees?*

By altering the mentorship_eligibility table, we can find the amount of employees who are not retiring this year who will be able to stay and mentor new employees. By counting the amount of employees who are not retiring, we will get 1939 eligible mentors. Comparing that to the 72,458 employees who are leaving, and ideally being replaced, there are not nearly enough employees to mentor new comers.

