use [People]

--1. Para�yti Join, kuris gauna visus Streamer vardus ir Game pavadinimus, kurie sutampa. T.y. rodyti tik tuos streamerius, kurie lo�ia sutampan�ius �aidimus.

Select PrimaryGameId, Streamer.Name
From Streamer
Inner Join Game
On Streamer.PrimaryGameId=Game.Id