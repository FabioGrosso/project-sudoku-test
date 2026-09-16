row(1..4).
col(1..4).
num(1..4).
n(2).

sudoku(X,Y,N) :- initial(X,Y,N).

1 { sudoku(X,Y,N) : num(N) } 1 :-
    row(X), col(Y),
    not initial(X,Y,_).

:- row(X), num(N), 2 { sudoku(X,Y,N) : col(Y) }.

:- col(Y), num(N), 2 { sudoku(X,Y,N) : row(X) }.

#show sudoku/3.