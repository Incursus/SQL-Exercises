/*
PARDAVIMAI
Veikla   Miestas     Pardavimai  Suma
Veikla1 Klaipëda         200              1600
Veikla2 Kaunas           300              1800
Veikla2 Kaunas           400              1900
Veikla2 Vilnius          200              2000
Veikla3 Vilnius          555              666
*/

--Kaip pasirinkti pardavimus, veiklà tik ið kauno? ATS:
Select Pardavimai, Veikla From Pardavimai Where Miestas = N'Kaunas'

--Kaip atsirinkti pardavimus ið miestø, prasidedanèiø tik su K raide? ATS: 
Select Pardavimai From Pardavimai Where Miestas Like 'K%'

--Kaip sudëti pardavimus ið Kauno ir Klaipëdos? ATS:
 Select Sum(Pardavimai) From Pardavimai Where Miestas = N'Kaunas' Or Miestas = N'Klaipëda'

--[Sugalvotas] Kiek unikaliø veiklø turi kiekvienas miestas? ATS: 
Select Miestas, Count(Distinct Veikla) From Pardavimai Group By Miestas

--[Sugalvotas] Parodyti pardavimus didëjimo tvarkà, o sumà maþëjimo tvarka. ATS: 
Select * From Pardavimai Order By Pardavimai

Select * From Pardavimai Order By Suma Desc

