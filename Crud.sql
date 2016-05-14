use [People]

--1. Įterpti 3 naujus įrašus. (C-create)
Insert into Friend (Name)
Values ('Shawn')
Insert into Friend (Name)
Values ('Ad')
Insert into Friend (Name)
Values ('Milda')

--2. Gauti visus duomenis. (R-read)
Select * From Friend

--3. Pakeisti vieno iš įterptų įrašų Name reikšmę. (U-update)
Update Friend
Set Name='Gedas'
Where Name='Ad'

--4. Ištrinti visus lentelėje esančius įrašus. (D-delete)
Delete From Friend
