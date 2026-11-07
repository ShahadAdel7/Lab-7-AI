% Task 2: Add X at the end of List.

% base case adding to an empty list
add_at_the_end(X, [], [X]).

% recursive case
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
