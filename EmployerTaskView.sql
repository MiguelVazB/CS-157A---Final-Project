CREATE VIEW TaskView AS
	SELECT 
		E.EmployeeID,
		E.Name,
		T.Title
	FROM Employee Task M
		INNER JOIN Employer E 
			ON M.EmployerITaskID = E.EmployerTaskID
		INNER JOIN Task T 
			ON M.TaskID = T.TaskID;		
		