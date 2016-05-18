use [People]

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
