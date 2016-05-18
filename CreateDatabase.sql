--Su SQL komandom susikurt duomenø bazæ Test ir po to jà iðtrinti. Prieð kuriant patikrinti ar duomenø bazë egzistuoja. Jei neegzistuoja - nekurti (if sàlyga) bet dropinti. 
--http://stackoverflow.com/questions/12364250/dropping-and-recreating-databases-in-microsoft-sql-server
If Not Exists(Select * From sys.databases where name='Test')
	Create Database Test

Drop Database Test
