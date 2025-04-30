% Hechos/Predicados
progenitor(juan, pedro).
progenitor(ana, pedro).
progenitor(pedro, carlos).
progenitor(maria, carlos).
progenitor(pedro, lucia).
progenitor(maria, lucia).
progenitor(carlos, elena).
progenitor(lucia, fernando).
progenitor(jorge, ana).
progenitor(lucia, raul).
progenitor(elena, diego).
progenitor(carlos, isabel).
progenitor(fernando, sofia).
progenitor(maria, diego).
progenitor(sofia, simon).
progenitor(ana, mateo).
progenitor(pedro, elena).
progenitor(raquel, javier).
progenitor(diego, paola).
progenitor(isabel, nicolas).
progenitor(raul, veronica).
progenitor(javier, adriana).
progenitor(paola, lucas).

% Regla Recursiva
antepasado(X, Y) :- progenitor(X, Y).
antepasado(X, Y) :- antepasado(X, Z), progenitor(Z, Y).