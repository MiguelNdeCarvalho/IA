%estado

%estado_inicial(mundAsp(PosicaoAsp, CasasSujas, Dim))

estado_inicial(mundAsp((0,0), [(0,1),(1,0)])).

estado_final(mundAsp((_,_), [])).

op(mundAsp((I,J), LSujos, Dim), aspirar, mundAsp((I,J), LSujos1, Dim), 1):- member((I,J), LSujos), retira((I,J), LSujos, LSujos1).
op(mundAsp((I,J), LSujos, Dim), esq, mundAsp((I,J), LSujos1, Dim), 1):- J1 is J+1, J=< Dim.

retira(A, [A|T], T).
retira(A, [H|T], [H|L1]) :- A \= H, retira(A, T, L1).
retira(A, [], []).