SELECT p.name FROM Person p
JOIN Writes w 
ON p.pid = w.pid
LEFT JOIN Directs d
ON w.mid = d.mid
WHERE 
	d.mid IS NULL