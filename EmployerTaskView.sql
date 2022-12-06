DROP VIEW IF EXISTS EmployerTaskView;
CREATE VIEW EmployerTaskView AS
	SELECT 
		E.EmployerID,
		E.Name,
		T.Title
	FROM `Employer Task` M
		INNER JOIN Employer E 
			ON M.EmployerTaskID = E.EmployerTaskID
		INNER JOIN Task T 
			ON M.TaskID = T.TaskID;		
		