estado_incial((1,1)).
estado_final((7,7)).

op((X,Y),(N,M),(X1,Y1,1):- member(N,[1,-1]), member(M,[2,-2]), X1, is x+N, Y1, is Y+M, lim(X1,Y1).

op((X,Y),(N,M),(X1,Y1,1):- member(M,[1,-1]), member(N,[2,-2]), X1, is x+N, Y1, is Y+M, lim(X1,Y1).