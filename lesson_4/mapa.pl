



% Restricoes
  %a\= b, a\=d, b\=c, b\=e, b\=d, b\=f, c\=f,d\=e, d\=g,e\=f,e\=g, f\=g.


rest([(a,b), (a,d), (b,c), (b,e), (b,d), (b,f), (c,f),(d,e), (d,g),
	 (e,f),(e,g), (f,g)]).


estado_inicial(e([v(a,[v,a,c],_),
v(b,[v,a,c],_),
		    v(c,[v,a,c],_),
		    v(d,[v,a,c],_),
		    v(e,[v,a,c],_),
		    v(f,[v,a,c],_),
		    v(g,[v,a,c],_)],[])).

ve_restricoes(e(Nafec,Afect)):- rest(R), \+ (member(v(A,Di,Vi), Afect), member(v(B,Dj,Vj),Afect),
				      A \=B, (member((A,B),R);member((B,A),R))).
  
