# Pewlett-Hackard-Analysis
## Overview
### Background
Client is anticipating a large number of vacancies as employees from the Baby Boomer generation begin to retire.  Client is in need of data to infom on upcoming vacancies to a) prepare retirement packages and b) proactively addresss vacancies from upcoming retirements throughout multiple departments and job titles.  The initial project with this client was to create a database with SQL and infom on how would be retiring in the next few years and how many positions would need to be filled. 

### Purpose
Client has requested additional analysis to inform on:
 1. The number of employees who would be retiring by title.
 2. Which employees are eligible for the company's mentorship program. 

## Results
### Points from Deliverable 1: Employees Retiring by Title
 - Many of the employees who are about to retire have multiple titles, showing these valuable employees have recieved promotions or have cross trained in multiple departments: 

![retirement_titles](https://user-images.githubusercontent.com/93740725/153650542-e5d010d1-7622-4729-9ba0-9a2737f2cb6d.png)

 - There are 72,458 employees retiring in the near future, with the bulk (70%) being Senior Engineers or Senior Staff.  
 - TWO of the only FIVE active managers are about to retire!

![retiring_titles](https://user-images.githubusercontent.com/93740725/153511824-56499d08-1852-47c4-81fe-274fa5e5cd37.png)

### Points from Deliverable 2: Who is Eligible for the Mentorship Program
 - There are 1,549 current employees listed as eligible for the mentorship program who were born in 1965. See a snippet of the table below:

![mentorship_eligibility](https://user-images.githubusercontent.com/93740725/153512872-c5392221-b7cd-43a4-859a-b06f93209b41.png)
  
## Summary
PH is looking at an astonishing 72,458 employees retiring in the near future. There are only 1,549 qualified, current employees who are eligible to participate in the mentorhip program.  This is not enough to mentor the next generation of PH employees.  

Rather than focusing on a 1:1 mentorship prgram, it would be advisable for PH to use this mentorhip-eligible employee pool to contribute to a more scalable solution, such as the development workshops and courses that would reach thousands of incoming employees at a time. 

### Additional Queries 
It would be beneficial for the client to take a closer look at the current emplyess who are eligible to participate in the mentorship program to better prepare for the upcoming "silver tsunami".  The below table shows a count of eligible employees by title:

![mentorship_eligibility_by_title](https://user-images.githubusercontent.com/93740725/153638218-1ed9a5d2-1b04-4cb9-a1b0-e10e626fcc50.png)

Comparing this to the count of retiring employees by title provided in deliverable 1, there are significant gaps between the number of employees leaving and those available to mentor.  There are 24,926 Senior Engineers leaving, and only 402 availble to mentor, for example.  These 402 Senior Engineers will not be able to individually mentor for nearly 25k vacancies.  It is notable that there are no managers availble to mentor, and there should be a program put in place to develop additional managers. 

The next table shows a count of eligible employees by department versus the number of upcoming retirements. This gives our client an idea of the resources that each department has to work with to create programs to prepare new employees. There are again significant gaps between the number of outgoing and available employees, showing again, that a 1:1 mentorship program would be unrealistic. 

![Availble_VS_Retiring](https://user-images.githubusercontent.com/93740725/153648638-b2a19e56-6c67-4e59-b61d-42c542fa59bb.png)



