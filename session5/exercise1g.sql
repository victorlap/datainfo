CREATE TABLE Bestelling (
	isbn VARCHAR(13),
	aantal INT,
	FOREIGN KEY (isbn) REFERENCES Book(isbn) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TRIGGER 1g
AFTER INSTERT ON Boek
FOR EACH STATEMENT
WHEN (NOT EXISTS (SELECT * FROM OLD WHERE auteur = new.auteur)
	BEGIN
	INSERT INTO Bestelling VALUES (new.isbn, 1)
	END;