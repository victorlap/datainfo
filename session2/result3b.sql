SELECT a.pid 
	FROM 
		Acts a
	JOIN 
		Movie m
	ON 
		a.mid = m.mid
	WHERE	
		m.name = 'Back to the Future'
;
