CREATE VIEW GroupView AS 
	SELECT 
		E.Name,
		E.`Job Title`,
		G.GroupName
	FROM Employee E
		INNER JOIN `Group` G
			ON E.`Group ID` = G.GroupID;
								