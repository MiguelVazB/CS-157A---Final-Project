DROP VIEW IF EXISTS DepartmentTaskView;
CREATE VIEW DepartmentTaskView AS 
	SELECT 
		G.GroupName,
		E.Name AS "Leader Name",
		D.Title,
		D.Description
	FROM `Group` G
		INNER JOIN Employee E
			ON E.EmployeeID = G.Leader
		INNER JOIN `Department Task` D
			ON D.DepartmentTaskID = G.DepartmentTaskID;
	