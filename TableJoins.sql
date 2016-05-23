If Not Exists(Select * From sys.databases where name='People')
	Create Database People

use [People]
If Exists(Select * From sys.tables where name='Game')
Drop Table Game

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

If Exists(Select * From sys.tables where name='Streamer')
Drop Table Streamer

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
Values (4, 'Alkaizer')

--1. Paraðyti Join, kuris gauna visus Streamer vardus ir Game pavadinimus, kurie sutampa. T.y. rodyti tik tuos streamerius, kurie loðia sutampanèius þaidimus.

Select Streamer.Name, Game.Name
From Streamer
Inner Join Game
On Streamer.PrimaryGameId=Game.Id

--2. Paraðyti Join, kuris gauna Streamer vardus ir Game pavadinimus ið visø Streamer áraðø ir sutampanèiø Game áraðø.

Select Streamer.Name, Game.Name
From Streamer
Left Join Game
On Streamer.PrimaryGameId=Game.Id

--Paraðyti Join, kuris gauna Streamer vardus ir Game pavadinimus ið visø  sutampanèiø Streamer áraðø ir visø Game áraðø.
Select Streamer.Name, Game.Name
From Streamer
Right Join Game
On Streamer.PrimaryGameId=Game.Id

--Paraðyti Join, kuris gauna Streamer vardus ir Game pavadinimus ið visø Streamer áraðø ir visø Game áraðø.
Select Streamer.Name, Game.Name
From Streamer
Full Join Game
On Streamer.PrimaryGameId=Game.Id
