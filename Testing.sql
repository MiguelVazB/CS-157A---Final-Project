-- SELECT 	* FROM Employee;

-- INSERT INTO `Task` VALUES ('7', '2022-12-06', '2022-12-13', 'Change light bulbs', 'The lights in the garden is blinking, please change it.');
-- SELECT 	* FROM Task;

-- SELECT 
-- 	D.DepartmentName,
--     E.Name,
--     E.`Job Title`
-- FROM `Department Manager` DM
-- 	INNER JOIN Department D
-- 		ON D.DepartmentManagerID = DM.DepartmentManagerID
-- 	INNER JOIN Employee E
-- 		ON DM.EmployeeID = E.EmployeeID;

SELECT Name FROM groupview WHERE GroupName="Gardener Group";