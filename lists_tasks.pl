% Lab 7 - Lists Tasks

% Task 1: Delete every occurrence of X from List.

% base case deleting empty gives back empty list.
deleteElement(_, [], []).

% case 1 x is the head skip x and recusively process the tail.
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% case 2 head(y) not equal x, keep y and process tail.

deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).


% Task 2: Add X at the end of List.

% base case adding to an empty list
add_at_the_end(X, [], [X]).

% recursive case
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
