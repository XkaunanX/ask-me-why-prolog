% Hechos
hombre(juan).
hombre(tomas).
hombre(braian).
hombre(mariano).
hombre(valentino).
hombre(damian).
hombre(joaquin).
hombre(andres).
hombre(pedro).
hombre(carlos).
hombre(federico).
hombre(ignacio).
hombre(miguel).
hombre(roberto).
hombre(sergio).
hombre(victor).
hombre(alejandro).
hombre(facundo).
hombre(mateo).
mujer(ana).
mujer(beatriz).
mujer(carla).
mujer(diana).
mujer(elena).
mujer(fatima).
mujer(gabriela).
mujer(helena).
mujer(isabel).
mujer(julia).
mujer(karla).
mujer(lucia).
mujer(marta).
mujer(natalia).
mujer(olga).
progenitor(ana, juan).
progenitor(beatriz, tomas).
progenitor(carla, braian).
progenitor(diana, mariano).
progenitor(elena, valentino).
progenitor(fatima, damian).
progenitor(gabriela, joaquin).
progenitor(helena, andres).
progenitor(isabel, pedro).
progenitor(julia, carlos).
progenitor(karla, federico).
progenitor(lucia, ignacio).
progenitor(marta, miguel).
progenitor(natalia, roberto).
progenitor(olga, sergio).
progenitor(maria, victor).
progenitor(susana, alejandro).
progenitor(rosa, facundo).
progenitor(paula, mateo).

% Reglas
madre(X,Y) :- mujer(X), progenitor(X,Y).

% Consultas - Validacion
% hombre(_).                true si hay algun hombre
% mujer(_).                 true si hay alguna mujer
% progenitor(ana, juan).    true si ana es progenitor de juan
% hombre(ana).              true si es hombre
% mujer(juan).              true si es mujer

% Consulta de busqueda
% hombre(X).                Lista todos los hombres
% mujer(X).                 Lista todas las mujeres
% progenitor(X,Y).           Lista todos los progenitores y sus hijos
% progenitor(ana, X).       Lista todos los hijos de ana
% progenitor(X, juan).      Lista todos los progenitores de juan

% Consulta de navegacion (Verificar quien no cumple)
% \+ hombre(ana).           true si no es hombre
% \+ mujer(juan).           true si no es mujer

% Consulta de validacion combinada
% madre(ana,juan).

% Consulta de busqueda combinada
% madre(X, Y), progenitor(X, Y).