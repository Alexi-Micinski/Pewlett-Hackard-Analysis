# Pewlett-Hackard-Analysis

## Overview:

Pewlett Hackard is looking ahead to fill positions after employees retire. There is a need to know who will be retiring and how many positions will need to be filled. This will be done by generating a list of all employees who are eligible for the retirement package and building an employee database from csv files.

Then, the number of retiring employees, and identity of employees who are eligible to participate in a mentorship program will be determined. A report will describe the state of the “silver tsunami” as many current employees reach retirement age.

## Results:

  * A table was created for employee number, name, title, and years of employment. It should be noted that there are duplicate entries for employees that have switched titles during their employment.
  <img width="495" alt="Screen Shot 2022-08-28 at 12 35 00 PM" src="https://user-images.githubusercontent.com/106785377/187089448-1cf89d81-5d0d-496b-bee6-7afe36a0b8db.png">

  * The duplicate rows were removed from the table and the table was modified to hold only the most recent employee titles. Employees that have left the company were also removed and therefore the employee IDs are not sequential in this table.
  <img width="354" alt="Screen Shot 2022-08-28 at 12 33 19 PM" src="https://user-images.githubusercontent.com/106785377/187089388-13d6508b-1b20-4433-bcf6-02e365b7d745.png">

  * A query was written to retrieve the number of employees by their most recent job title who are about to retire. Only 2 managers are about to retire. Senior engineer and senior staff titles contain the majority of employees that are about to retire. 
  <img width="180" alt="Screen Shot 2022-08-28 at 12 32 47 PM" src="https://user-images.githubusercontent.com/106785377/187089370-22574a36-c091-43a8-97e3-848b5c4f640f.png">

  * A mentorship-eligibility table was created to hold the current employees who are eligible to participate in a mentorship program. 499,459 employees are eligible.
  <img width="572" alt="Screen Shot 2022-08-28 at 12 36 11 PM" src="https://user-images.githubusercontent.com/106785377/187089497-8db59ba5-7e0f-4d79-bdfb-8be720fc4ce5.png">


## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
  * 72,458 roles will need to be filled as the "silver tsunami" begins to make an impact.
  
  * There are not enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. There are 499,459 employees that are eligable for the mentorship program and only 72,458 retirement ready employees to mentor the incoming generation.

