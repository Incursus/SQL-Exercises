--Sukurti lentelę Friend duomenų bazėj People. Lentelė turi du laukus: Id (auto incremented, primary key) ir Name.
Create Table Friend
(
Id int Identity(1, 1) Primary Key,
Name nvarchar(50)
)

--Sukurti indeksą stulpeliui Name.
Create index IX_Name
ON Friend(Name)

--Po sukūrimo ištrinti pačią lentelę.
Drop Table Friend 
