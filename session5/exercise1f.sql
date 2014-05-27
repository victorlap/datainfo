CREATE TABLE Boek (
	isbn VARCHAR(13) PRIMARY KEY,
	titel VARCHAR(255),
	auteur VARCHAR(255)
);

CREATE TABLE Exemplaar (
	isbn VARCHAR(13),
	volgnummer VARCHAR(10) PRIMARY KEY,
	gewicht INT,
	kast VARCHAR (10)
);

CREATE FUNCTION delete_exemplaren()
RETURNS TRIGGER
AS $$ BEGIN
	DELETE FROM Exemplaar WHERE isbn = OLD.isbn
RETURN null;
END;
$$

LANGUAGE plpgsql;


CREATE TRIGGER voorwaarde4 AFTER DELETE ON Boek
	EXECUTE PROCEDURE delete_exemplaren();