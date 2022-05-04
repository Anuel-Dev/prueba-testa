%Instituto Tecnológico de Orizaba
%Ing. En Sistemas
%Prog. Lógica y Funcional
%Héctor Manuel Huerta Reyes
%31/05/2020
%
elementoquimico(c).
elementoquimico(h).
elementoquimico(o).
elementoquimico(n).
elementoquimico(na).
elementoquimico(cl).

moleculas(sal,compuesto([na,cl])).
moleculas(agua,compuesto([h,h,o])).
moleculas(agua_oxigen,compuesto([h,h,o,o])).
moleculas(butano,compuesto([c,h,h,h,h])).
moleculas(propano,compuesto([c,h,h,h])).
moleculas(amoniaco,compuesto([n,h,h,h])).
moleculas(hexano,compuesto([propano,butano,butano,propano])).

composicion(X,[X]):-elementoquimico(X).
composicion(X,Y):-moleculas(X,compuesto(Subcompuestos)),analisis(Subcompuestos,Y).

analisis([],[]).
analisis([A|R],Comp):-composicion(A,Elemento),analisis(R,Elemento2),
    append(Elemento,Elemento2,Comp).