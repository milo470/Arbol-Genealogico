espadre(juan,luis).
espadre(juan,marta).
esmadre(carmen,luis).
esmadre(carmen,marta).
esmadre(maria,pablo).
esmadre(maria,nelsy).
espadre(jose,pablo).
espadre(jose,nelsy).
esmadre(laura,diego).
esmadre(laura,marlen).
espadre(luis,diego).
espadre(luis,marlen).
esmadre(marta,pedro).
esmadre(marta,diana).
esmadre(marta,miguel).
espadre(pablo,pedro).
espadre(pablo,diana).
espadre(pablo,miguel).
esmadre(nelsy,vanesa).
espadre(raul,vanesa).

esabuelo(X,Z):-espadre(X,Y),espadre(Y,Z).
esabuelo(X,Z):-espadre(X,Y),esmadre(Y,Z).
esabuela(X,Z):-esmadre(X,Y),espadre(Y,Z).
esabuela(X,Z):-esmadre(X,Y),esmadre(Y,Z).

eshermano(X,Y):-espadre(Z,X),espadre(Z,Y), X\==Y.
eshermano(X,Y):-esmadre(Z,X),esmadre(Z,Y), X\==Y.

estio(X,Y):-eshermano(X,Z),espadre(Z,Y).
estia(X,Y):-eshermano(X,Z),espadre(Z,Y).
estio(X,Y):-eshermano(X,Z),esmadre(Z,Y).
estia(X,Y):-eshermano(X,Z),esmadre(Z,Y).
estia(X,Y):-soncasados(X,Z),eshermano(Z,W),espadre(W,Y).
estia(X,Y):-soncasados(X,Z),eshermano(Z,W),esmadre(W,Y).
estio(X,Y):-soncasados(X,Z),eshermano(Z,W),espadre(W,Y).
estio(X,Y):-soncasados(X,Z),eshermano(Z,W),esmadre(W,Y).

eshijo(X,Y):-espadre(Y,X).
eshijo(X,Y):-esmadre(Y,X).

soncasados(X,Y):-eshijo(Z,X),eshijo(Z,Y), Y\==X.
escasado(X):-espadre(X,Y),eshijo(Z,X),Z\==Y.
escasado(X):-esmadre(X,Y),eshijo(Z,X),Z\==Y.

esprimo(X,Y):-eshijo(X,Z),estio(Z,Y).
esprimo(X,Y):-eshijo(X,Z),estia(Z,Y).

esfeliz(X):-not(escasado(X)).

esnieto(X,Y):-esabuelo(Y,X).
esnieto(X,Y):-esabuela(Y,X).

essobrino(X,Y):-estio(Y,X).
essobrino(X,Y):-estia(Y,X).




