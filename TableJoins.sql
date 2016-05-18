use [People]

--1. Para�yti Join, kuris gauna visus Streamer vardus ir Game pavadinimus, kurie sutampa. T.y. rodyti tik tuos streamerius, kurie lo�ia sutampan�ius �aidimus.

Select Streamer.Name, Game.Name
From Streamer
Inner Join Game
On Streamer.PrimaryGameId=Game.Id

--2. Para�yti Join, kuris gauna Streamer vardus ir Game pavadinimus i� vis� Streamer �ra�� ir sutampan�i� Game �ra��.

Select Streamer.Name, Game.Name
From Streamer
Left Join Game
On Streamer.PrimaryGameId=Game.Id

--Para�yti Join, kuris gauna Streamer vardus ir Game pavadinimus i� vis�  sutampan�i� Streamer �ra�� ir vis� Game �ra��.
Select Streamer.Name, Game.Name
From Streamer
Right Join Game
On Streamer.PrimaryGameId=Game.Id

--Para�yti Join, kuris gauna Streamer vardus ir Game pavadinimus i� vis� Streamer �ra�� ir vis� Game �ra��.
Select Streamer.Name, Game.Name
From Streamer
Full Join Game
On Streamer.PrimaryGameId=Game.Id
