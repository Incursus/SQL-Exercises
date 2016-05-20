If Not Exists(Select * From sys.databases where name='People')
	Create Database People

Create Table Game
(
Id int not null identity(1, 1) Primary Key,
Name nvarchar(50) not null
)
Insert into Game (Name)
Values ('League of Legends')
Insert into Game (Name)
Values ('CSGO')
Insert into Game (Name)
Values ('WoW')
Insert into Game (Name)
Values ('Dota2')
Insert into Game (Name)
Values ('Overwatch')
Insert into Game (Name)
Values ('Hearthstone')
Insert into Game (Name)
Values ('Diablo3')
Insert into Game (Name)
Values ('Starcraft2')
Insert into Game (Name)
Values ('DST')
Insert into Game (Name)
Values ('Portal2')

Create Table Streamer
(
Id int not null identity (1, 1) Primary Key,
PrimaryGameId int,
Name nvarchar(50) not null
)
Insert into Streamer(PrimaryGameId, Name)
Values (2, 'summit1g')
Insert into Streamer(Name)
Values ('sodapoppin')
Insert into Streamer(PrimaryGameId, Name)
Values (5, 'Lirik')
Insert into Streamer(PrimaryGameId, Name)
Values (2, 'Ducksauce')
Insert into Streamer(PrimaryGameId, Name)
Values (4, 'Alkaizer'1)

