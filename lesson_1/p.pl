homem('Afonso Henriques','rei de Portugal',1109).
homem('Henrique de Borgonha','conde de Portugal',1069).

homem('Sancho I','rei de Portugal',1154).
homem('Fernando II','rei de Leão',1137).
homem('Afonso IX', 'rei de Leão e Castela', 1171).
homem('Afonso II', 'rei de Portugal',1185).

homem('Sancho II', 'rei de Portugal',1207).
homem('Afonso III', 'rei de Portugal',1210).


mulher('Teresa de Castela', 'condessa de Portugal', 1080).
mulher('Mafalda', 'condessa de Saboia', 1125).
mulher('Urraca', 'infanta de Portugal',1151).
mulher('Dulce de Barcelona','infanta de Aragão',1160).
mulher('Berengária', 'infanta de Portugal',1194).
mulher('Urraca C','infanta de Castela',1186).


filho('Afonso Henriques','Henrique de Borgonha').
filho('Afonso Henriques','Teresa de Castela').
filho('Urraca','Afonso Henriques').
filho('Sancho I','Afonso Henriques').
filho('Urraca','Mafalda').
filho('Sancho I','Mafalda').
filho('Afonso IX','Urraca').
filho('Afonso IX','Fernando II').
filho('Afonso II','Sancho I').
filho('Afonso II','Dulce de Barcelona').
filho('Berengária','Sancho I').
filho('Berengária','Dulce de Barcelona').
filho('Sancho II','Afonso II').
filho('Afonso III','Afonso II').
filho('Sancho II','Urraca C').
filho('Afonso III','Urraca C').

% Exercicio 2
irmao(X,Y) :- filho(X,Z), filho(Y,Z), X\=Y.

% Exercicio 3
primoDireito(X,Y):- filho(X,Z), filho(Y,W), irmao(Z,W).

% Exercicio 4
% irmaos(X,Xs):- findall(Y, irmao(X,Y), Xs).
irmaos(X,Xs):- setof(X-Y, irmao(X,Y), Xs).

% Exercicio 5

primoAux(X,Y) :- primoDireito(X,Y). % Se for primo direito
primoAux(X,Y) :- filho(Y,Z), primoAux(X,Z). % Se for filho do primo
primoAux(X,Y) :- filho(X,Z), primoAux(Y,Z). % se for primo dos pais

primoAux1(X,Y) :- primoDireito(X,Y). % Se for primo direito
primoAux1(X,Y) :- primoDireito(X,Z), filho(Y,Z). % Se for filho do primo
primoAux1(X,Y) :- filho(X,Z),filho(Y,V), primoAux1(Z,V). % se for primo dos pais

% primo(X,Xs) :- findall(Y, primoAux(X,Y), Xs).
primo(X,Xs) :- setof(Y, primoAux(X,Y), Xs).

primo1(X,Xs):- setof(Y, primoAux1(X,Y), Xs).

% FAZER ARVORE GENEALOGICA


% Exercicio 6

homem(X):- homem(X,_,_).
mulher(X):- mulher(X,_,_)

esposa(X,Y) :- mulher(X), filho(Z,X), filho(Z,Y), X\=Y.

% Exercicio 7

ascendentes(A,[]):- \+ filho(A,_).
ascendentes(A,[P,M|R]):- filho(A,P),filho(A,M), P\=M,
            ascendentes(P,S), ascendentes(M,Z), append(S,Z,R).

% Exercicio 8

% Este não funciona
%descendentes(A,[]):- \+ filho(_,A).
%descendentes(A,[F|R]):- filho(F,A), descendentes(F,Z), append([],Z,R).


%descendentesAux(X,Y) :- filho(Y,X).
%descendentesAux(X,Y) :- filho(Z,X), descendentesAux(Z,Y).
%descendentesBem(X,Xs) :- findall(Y, descendentesAux(X,Y), Xs).

% Exercicio 9

ascendentes1(A,c(P,S,M,Z)):- filho(A,P), homem(P), filho(A,M), mulher(M), P\=M, ascendentes1(P,S), ascendentes1(M,Z).
ascendentes1(A,0):- \+ filho(A,_).