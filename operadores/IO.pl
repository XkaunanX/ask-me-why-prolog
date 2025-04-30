% Base de conocimientos
producto(001, 'Silla', 120000).
producto(002, 'Mesa', 450000).
producto(003, 'Escritorio', 70000).
producto(004, 'Sillon', 800000).
producto(005, 'Ropero', 500000).

mostrar_productos :-
    producto(Codigo, Nombre, Precio),
    write('Codigo: '), write(Codigo), nl,
    write('Nombre: '), write(Nombre), nl,
    write('Precio: '), write(Precio), nl, nl,
    fail.
mostrar_productos.

% Consulta:
% ?- mostrar_productos.

consultar_precio :-
    write('Ingrese el codigo del producto: '), nl,
    read(Codigo),
    producto(Codigo, Nombre, Precio),
    write('El producto es: '), write(Nombre), nl,
    write('El precio es: '), write(Precio), nl.

% Consulta:
% ?- consultar_precio.

mostrar_producto_formato :-
    producto(Codigo, Nombre, Precio),
    format('Codigo: ~w, Nombre: ~s, Precio: $~w~n', [Codigo, Nombre, Precio]),
    fail.
mostrar_producto_formato.

% Consulta:
% ?- mostrar_producto_formato.

eco :-
    write('Ingrese un caracter: '),
    get_char(Char),
    write('El caracter ingresado es: '),
    put_char(Char), nl.

% Consulta:
% ?- eco.

mostrar_con_tab :-
    write('Codigo'), tab(5), write('Nombre'), tab(10), write('Precio'), nl,
    producto(Codigo, Nombre, Precio),
    write(Codigo), tab(5), write(Nombre), tab(10), write(Precio), nl,
    fail.
mostrar_con_tab.

% Consulta:
% ?- mostrar_con_tab.


leer_datos :-
    write('Ingrese el nombre del producto: '), nl,
    read(Nombre),
    write('Ingrese el precio del producto: '), nl,
    read(Precio),
    write('Ha ingresado: '), write(Nombre), write(' con precio '), write(Precio), nl.

% Consulta:
% ?- leer_datos.