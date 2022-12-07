-- EMPLOYEE
INSERT INTO `Task` (`TaskID`, `StartingDate`, `Deadline`, `Title`, `Description`) VALUES ('1', '01-01-2022', '1-02-2022', 'Fixing the Garden Hose', 'The garden hose is broken and dirty. Clean it up and get it working.');
INSERT INTO  `Task` (`TaskID`, `StartingDate`, `Deadline`, `Title`, `Description`) VALUES ('2', '12-01-2022', '12-24-2022', 'Decorate for X\'mas', 'Decorate the garden for the Christmas.');
INSERT INTO `Task` (`TaskID`, `StartingDate`, `Deadline`, `Title`, `Description`) VALUES ('3', '01-05-2022', '01-31-2022', 'Remove Decoration', 'Remove Christmas decorations from the garden.');

UPDATE `Task` SET `StartingDate` = '2022-01-01', `Deadline` = '2022-01-02' WHERE (`TaskID` = '1');
UPDATE `Task` SET `StartingDate` = '2022-12-01', `Deadline` = '2022-12-24' WHERE (`TaskID` = '2');
UPDATE `Task` SET `StartingDate` = '2023-01-05', `Deadline` = '2023-01-12' WHERE (`TaskID` = '3');
INSERT INTO `Task` (`TaskID`, `StartingDate`, `Deadline`, `Title`, `Description`) VALUES ('4', '2022-08-01', '2022-08-05', 'Clean leafs for the garden', 'Remove the leafs in the garden');
INSERT INTO `Task` (`TaskID`, `StartingDate`, `Deadline`, `Title`, `Description`) VALUES ('5', '2022-07-05', '2022-07-06', 'Check the tools', 'Check all the tools for the garden is not broken.');
INSERT INTO `Task` (`TaskID`, `StartingDate`, `Deadline`, `Title`, `Description`) VALUES ('6', '2022-09-01', '2022-09-30', 'Give water', 'Give water to the garden.');


-- Employer Task
INSERT INTO `Employer Task` (`EmployerTaskID`, `TaskID`) VALUES ('1', '2');
INSERT INTO `Employer Task` (`EmployerTaskID`, `TaskID`) VALUES ('2', '1');
INSERT INTO `Employer Task` (`EmployerTaskID`, `TaskID`) VALUES ('3', '3');

-- Employer
INSERT INTO `Employer` (`EmployerID`, `Name`, `EmployerTaskID`) VALUES ('1', 'Mike Garand', '1');
INSERT INTO `Employer` (`EmployerID`, `Name`, `EmployerTaskID`) VALUES ('2', 'John Doe', '2');
INSERT INTO `Employer` (`EmployerID`, `Name`, `EmployerTaskID`) VALUES ('3', 'Sam Smith', '3');


-- Main Task:
INSERT INTO `Main Task` (`MainTaskID`, `TaskID`) VALUES ('1', '4');
INSERT INTO `Main Task` (`MainTaskID`, `TaskID`) VALUES ('2', '6');
INSERT INTO `Main Task` (`MainTaskID`, `TaskID`) VALUES ('3', '5');

-- Department:
INSERT INTO `Department` (`DepartmentID`, `MainTaskID`, `DepartmentName`) VALUES ('111', '1', 'Cleaning Department');
INSERT INTO `Department` (`DepartmentID`, `MainTaskID`, `DepartmentName`) VALUES ('222', '2', 'Tools Department');
INSERT INTO `Department` (`DepartmentID`, `MainTaskID`, `DepartmentName`) VALUES ('333', '3', 'Watering Department');

-- Salary:
INSERT INTO `Salary` (`SalaryID`, `Salary`) VALUES ('1', '100');
INSERT INTO `Salary` (`SalaryID`, `Salary`) VALUES ('2', '200');
INSERT INTO `Salary` (`SalaryID`, `Salary`) VALUES ('3', '300');

-- Employee:
INSERT INTO `Employee` (`EmployeeID`, `Name`, `Birthday`, `Hired date`, `Email`, `Phone`, `Job Title`, `SalaryID`) VALUES ('1', 'Larry Gibs', '1998-12-05', '2005-02-03', 'larrygibs@gmail.com', '925-456-2653', 'Plumber', '1');
INSERT INTO `Employee` (`EmployeeID`, `Name`, `Birthday`, `Hired date`, `Email`, `Phone`, `Job Title`, `SalaryID`) VALUES ('2', 'Dhruv Sanchez', '2000-12-11', '2020-01-01', 'Dhruvsanchez@gmail.com', '111-222-3333', 'Plumber', '1');
INSERT INTO `Employee` (`EmployeeID`, `Name`, `Birthday`, `Hired date`, `Email`, `Phone`, `Job Title`, `SalaryID`) VALUES ('3', 'Kacie Knowles', '1980-09-09', '2000-08-01', 'KacieKnowles@gmail.com', '222-444-6665', 'Gardener', '3');
INSERT INTO `Employee` (`EmployeeID`, `Name`, `Birthday`, `Hired date`, `Email`, `Phone`, `Job Title`, `SalaryID`) VALUES ('4', 'Luke Bray', '1990-11-20', '2010-07-08', 'LBray@gmail.com', '123-456-7890', 'Gardener', '2');
INSERT INTO `Employee` (`EmployeeID`, `Name`, `Birthday`, `Hired date`, `Email`, `Phone`, `Job Title`, `SalaryID`) VALUES ('5', 'Joyce Walter', '2000-08-08', '2020-07-05', 'JoyWalt123@gmail.com', '861-902-4567', 'Regular employee', '1');
INSERT INTO `Employee` (`EmployeeID`, `Name`, `Birthday`, `Hired date`, `Email`, `Phone`, `Job Title`, `SalaryID`) VALUES ('6', 'Keyaan Vazquez', '1990-04-02', '2005-09-09', 'Keyaan789@gmail.com', '432-698-0980', 'Regular Employee', '2');

-- Department Manager
INSERT INTO `Department Manager` (`DepartmentManagerID`, `EmployeeID`) VALUES ('123', '1');
INSERT INTO `Department Manager` (`DepartmentManagerID`, `EmployeeID`) VALUES ('456', '3');
INSERT INTO `Department Manager` (`DepartmentManagerID`, `EmployeeID`) VALUES ('789', '5');

-- Department task:
INSERT INTO `Department Task` (`DepartmentTaskID`, `Title`, `Deadline`, `Starting Date`, `Description`, `TaskProgress`) VALUES ('12345', 'Clean the Garden', '2022-08-05', '2022-08-01', 'Cut tree branch and mow the lawn', 'Complete');
INSERT INTO `Department Task` (`DepartmentTaskID`, `Title`, `Deadline`, `Starting Date`, `Description`, `TaskProgress`) VALUES ('24680', 'Decolate Garden', '2022-12-24', '2022-12-06', 'Decolate the Garden for Christmas.', 'In progress');
INSERT INTO `Department Task` (`DepartmentTaskID`, `Title`, `Deadline`, `Starting Date`, `Description`, `TaskProgress`) VALUES ('13579', 'Check Sprinklers', '2022-09-01', '2022-08-30', 'Check Sprinklers are working', 'Complete');

UPDATE `Department Task` SET `TaskProgress` = '50' WHERE (`DepartmentTaskID` = '13579');
UPDATE `Department Task` SET `TaskProgress` = '100' WHERE (`DepartmentTaskID` = '24680');
UPDATE `Department Task` SET `TaskProgress` = '100' WHERE (`DepartmentTaskID` = '12345');


-- Group:
INSERT INTO `Group` (`GroupID`, `GroupName`, `Leader`, `DepartmentTaskID`) VALUES ('1', 'Gardener Group', '3', '12345');
INSERT INTO `Group` (`GroupID`, `GroupName`, `Leader`, `DepartmentTaskID`) VALUES ('2', 'Staff Group', '6', '24680');
INSERT INTO `Group` (`GroupID`, `GroupName`, `Leader`, `DepartmentTaskID`) VALUES ('3', 'Mechanical Group', '1', '13579');

-- UPDATE employee:
UPDATE `Employee` SET `DepartmentTaskID` = '13579', `Group ID` = '3', `Department ID` = '222' WHERE (`EmployeeID` = '1');
UPDATE `Employee` SET `DepartmentTaskID` = '13579', `Group ID` = '3', `Department ID` = '222' WHERE (`EmployeeID` = '2');
UPDATE `Employee` SET `DepartmentTaskID` = '12345', `Group ID` = '1', `Department ID` = '111' WHERE (`EmployeeID` = '3');
UPDATE `Employee` SET `DepartmentTaskID` = '12345', `Group ID` = '1', `Department ID` = '111' WHERE (`EmployeeID` = '4');
UPDATE `Employee` SET `DepartmentTaskID` = '24680', `Group ID` = '2', `Department ID` = '333' WHERE (`EmployeeID` = '5');
UPDATE `Employee` SET `DepartmentTaskID` = '24680', `Group ID` = '2', `Department ID` = '333' WHERE (`EmployeeID` = '6');


-- Update Employer:
UPDATE `Employer` SET `DepartmentID` = '111' WHERE (`EmployerID` = '1');
UPDATE `Employer` SET `DepartmentID` = '222' WHERE (`EmployerID` = '2');
UPDATE `Employer` SET `DepartmentID` = '333' WHERE (`EmployerID` = '3');

-- DeparmentManagerTask:
INSERT INTO `Department Manager Tasks` (`DepartmentManagerTaskID`, `DepartmentTaskID`) VALUES ('1234', '12345');
INSERT INTO `Department Manager Tasks` (`DepartmentManagerTaskID`, `DepartmentTaskID`) VALUES ('5678', '13579');
INSERT INTO `Department Manager Tasks` (`DepartmentManagerTaskID`, `DepartmentTaskID`) VALUES ('7890', '24680');

-- Department Manager:
UPDATE `Department Manager` SET `DepartmentManagerTaskID` = '1234' WHERE (`DepartmentManagerID` = '123');
UPDATE `Department Manager` SET `DepartmentManagerTaskID` = '5678' WHERE (`DepartmentManagerID` = '456');
UPDATE `Department Manager` SET `DepartmentManagerTaskID` = '7890' WHERE (`DepartmentManagerID` = '789');

-- Update department
UPDATE `Department` SET `DepartmentManagerID` = '123' WHERE (`DepartmentID` = '222');
UPDATE `Department` SET `DepartmentManagerID` = '456' WHERE (`DepartmentID` = '111');
UPDATE `Department` SET `DepartmentManagerID` = '789' WHERE (`DepartmentID` = '333');
