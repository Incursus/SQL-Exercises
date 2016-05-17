use [People]

--1. Paraðyti Join, kuris gauna visus Streamer vardus ir Game pavadinimus, kurie sutampa. T.y. rodyti tik tuos streamerius, kurie loðia sutampanèius þaidimus.

Select PrimaryGameId, Streamer.Name
From Streamer
Inner Join Game
On Streamer.PrimaryGameId=Game.Id