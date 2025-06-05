Highridge Construction Company - Worker Payment Slips
Module 1 Assignment - BAN 6420

Date:05/10/2025 

Contents of the ZIP Folder
1. ge_payment_slips.py   → Python script
2. ge_payment_slips.R    → R script
3. README.txt        	 → This readme file

Description
This program was created to automate the weekly generation of payment slips for 400 employees at Highridge Construction Company. It performs the following tasks:

-Randomly generates profiles for 400 workers.

-Assigns each worker a gender and a salary.

-Determines the employee level based on salary and gender using the following conditions:

-Assigns level "A1" if the salary is between $10,000 and $20,000.

-Assigns level "A5-F" if the salary is between $7,500 and $30,000 and the worker is female.


The output shows
-workers with valid employee levels ("A1" and "A5-F").
-workers that are not assigned to a level
This program handles errors during execution gracefully using exception handling.


How to Run the Code
 Python Version
Requirements: Python
Steps:
1. Open a terminal or command prompt.
2. Navigate to the folder with the script.
3. Run the script:
   python generate_payment_slips.py

--- R Version ---
Requirements: R (or RStudio)
Steps:
1. Open R or RStudio.
2. Open the script file `generate_payment_slips.R`.
3. Run the script.

 Error Handling
Both the Python and R scripts use exception handling:
-Python: try/except
-R: tryCatch()
If any worker has missing or corrupted data, the script will log the error  but continue processing the remaining workers.


