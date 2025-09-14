% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

%
row(1..4).
col(1..4).
num(1..4).

%
1 { sudoku(R,C,N) : num(N) } 1 :- row(R), col(C).

%
1 { sudoku(R,C,N) : col(C) } 1 :- row(R), num(N).

%
1 { sudoku(R,C,N) : row(R) } 1 :- col(C), num(N).

%
sudoku(R,C,N) :- initial(R,C,N).

#show sudoku/3.

