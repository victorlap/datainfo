
	SELECT a.pid FROM Acts a, Movie m
	WHERE 
		a.mid = m.mid
	AND	
		m.name = 'Back to the Future'
	;
