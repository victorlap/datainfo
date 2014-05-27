BEGIN; -- Volgens de opgave mag T1 geen dirty reads hebben, blijkbaar T2 wel, dus die leggen we geen beperking op
--read2(x)
SELECT titel FROM Boek WHERE isbn = ' 0136067018';
--write2(x)
UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = '0136067018';
COMMIT;