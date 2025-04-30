% Base de conocimiento

% Productos
producto(001, cat4, reposera).
producto(002, cat2, cocina).
producto(003, cat2, microondas).
producto(004, cat3, sillon).
producto(005, cat2, heladera).
producto(006, cat4, sombrilla).
producto(007, cat1, repisa).
producto(008, cat1, cama).

% Precios
precio(001, 20000).
precio(002, 120000).
precio(003, 150000).
precio(004, 87000).
precio(005, 449000).
precio(006, 50000).
precio(007, 12500).
precio(008, 96000).

% Stock
stock(reposera, 100).
stock(cocina, 3).
stock(microondas, 15).
stock(sillon, 17).
stock(heladera, 23).
stock(sombrilla, 43).
stock(repisa, 12).
stock(cama, 50).

% Costos de flete
flete(muebles, 1250).
flete(electro, 1300).
flete(escritorio, 1350).
flete(jardin, 1500).

% Categorías
categoria(cat1, muebles).
categoria(cat2, electro).
categoria(cat3, escritorio).
categoria(cat4, jardin).

%reglas

nombre_stock(N,S) :- categoria(C, escritorio), producto(COD, C, N), stock(N,S), precio(COD, P), P > 12500.

% ?- categoria(C, muebles), producto(COD, C, N), stock(N,S), flete(muebles, P)

segun_codigo(COD, N, P, PF) :- producto(COD, CAT, N), precio(COD, P), categoria(CAT, Dc), flete(Dc, Pf).

% ?- categoria(CAT, electro), producto(COD, CAT, N), precio(COD, P), flete(electro, Pf)

precio_total(N,Pt) :- producto(COD, CAT, N), precio(COD, P), categoria(CAT, Dc), flete(Dc, Pf), Pt is P + Pf.