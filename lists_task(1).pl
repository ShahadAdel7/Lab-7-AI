% Lab 7 - Lists Tasks

% Task 1: Delete every occurrence of X from List.

% base case deleting empty gives back empty list.
deleteElement(_, [], []).

% case 1 x is the head skip x and recusively process the tail.

deleteElement(X, [X|Tail], ResultTail) :-
    deleteElement(X, Tail, ResultTail).

% case 2 head(y) not equal x, keep y and process tail.

deleteElement(X, [Y|Tail], [Y|ResultTail]) :-
    X \= Y,
    deleteElement(X, Tail, ResultTail).
