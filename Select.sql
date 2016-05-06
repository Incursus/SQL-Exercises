/*
PARDAVIMAI
Veikla   Miestas     Pardavimai  Suma
Veikla1 Klaip�da         200              1600
Veikla2 Kaunas           300              1800
Veikla2 Kaunas           400              1900
Veikla2 Vilnius          200              2000
Veikla3 Vilnius          555              666
*/

--Kaip pasirinkti pardavimus, veikl� tik i� kauno? ATS:
Select Pardavimai, Veikla From Pardavimai Where Miestas = N'Kaunas'

--Kaip atsirinkti pardavimus i� miest�, prasidedan�i� tik su K raide? ATS: 
Select Pardavimai From Pardavimai Where Miestas Like 'K%'

--Kaip sud�ti pardavimus i� Kauno ir Klaip�dos? ATS:
 Select Sum(Pardavimai) From Pardavimai Where Miestas = N'Kaunas' Or Miestas = N'Klaip�da'

--[Sugalvotas] Kiek unikali� veikl� turi kiekvienas miestas? ATS: 
Select Miestas, Count(Distinct Veikla) From Pardavimai Group By Miestas

--[Sugalvotas] Parodyti pardavimus did�jimo tvark�, o sum� ma��jimo tvarka. ATS: 
Select * From Pardavimai Order By Pardavimai

Select * From Pardavimai Order By Suma Desc

