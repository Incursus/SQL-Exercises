--Su SQL komandom susikurt duomen� baz� Test ir po to j� i�trinti. Prie� kuriant patikrinti ar duomen� baz� egzistuoja. Jei neegzistuoja - nekurti (if s�lyga) bet dropinti. 
--http://stackoverflow.com/questions/12364250/dropping-and-recreating-databases-in-microsoft-sql-server
If Exists(Select * From sys.databases where name='Test')
Drop Database Test
Else Create Database Test
