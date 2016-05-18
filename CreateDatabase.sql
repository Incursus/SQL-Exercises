--Su SQL komandom susikurt duomenø bazæ Test ir po to jà iðtrinti. Prieð kuriant patikrinti ar duomenø bazë egzistuoja. Jei neegzistuoja - nekurti (if sàlyga) bet dropinti. 
--http://stackoverflow.com/questions/12364250/dropping-and-recreating-databases-in-microsoft-sql-server
If Exists(Select * From sys.databases where name='Test')
Drop Database Test
Else Create Database Test
