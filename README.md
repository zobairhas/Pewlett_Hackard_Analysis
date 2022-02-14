# Pewlett_Hackard_analysis

## Project Overview
The client has asked to create a brand new database that stores employee data and manipulate that data so that we know:
1. The number of retiring employees by title
2. The number of eligible employees for a mentorship program

## Methodology
- Tools/Programs/Languages used:
    - SQL
    - pgAdmin
    - Excel (import/export data)

- I used the provided CSV files to create a new database and then created six empty tables.
- Then, I imported six individual CSV files to fill in data in those empty tables.  
- After that, I used various SQL queries to manipulate the data to satisfy the asks from the client. 

## Pewlett Hackard Analysis Results

### Number of Retiring Employees by Title
- There will be several employees that will retire with the following titles: Senior Engineer, Senior Staff, and Engineer.

![title](https://user-images.githubusercontent.com/44425379/153962717-c33996ce-5bc8-4b49-9958-5b2e55f93d42.png)
- This is concerning, as these three titles alone make up for over 60,000 employees!
- Pewlett Hackard (PH) will need to focus on backfilling their development department, or else they risk falling behind in that category.
- PH is also at risk of losing a large number of Senior Staff. These individuals possess a large amount of historical knowledge that might impact day-to-day operations.

### Employees Eligible for the Mentorship Program
- There are about 1,550 employees that are eligible for the mentorship program.

![mentor_title](https://user-images.githubusercontent.com/44425379/153962749-713ad74c-6c4a-46de-b936-a7c3df077ebc.png)
- This is good for those at the Engineer level as about 501 Engineers can be mentored to the next level.
- It's a little concerning seeing 568 individuals from the Senior Staff eligible for this program as they most likely will not move past their current level. 
- More hiring needs to occur at the Assistant Engineer, Staff, and Engineer levels to compensate for employees retiring in the development department. 

## Additional Summary
1) How many roles will need to be filled as the "silver tsunami" beings to make an impact?
 - Using a simple `SELECT COUNT` query the total number of retiring employees is 72,457.
 - The development department is at risk as the #1 retiring title is Senior Engineer
2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
 - Technically, no. There are only about 1,550 employees that fall in the retirement-ready category. However, there are plenty of Senior-level employees that can mentor if PH is open to that. 
