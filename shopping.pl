% Lab 7 - Shopping Program p1

start :-
    shopping_list([coffee, milk, chocolate, apple, juice]).

shopping_list(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process_choice(Choice, Basket).

process_choice(d, Basket) :-
    display_items(Basket),
    shopping_list(Basket).

process_choice(a, Basket) :-
    write('Enter the item you want to add it: '),
    read(Item),
    add_item(Item, Basket, NewBasket),
    write('The item has been added'), nl,
    shopping_list(NewBasket).

process_choice(e, _) :-
    write('Goodbye!'), nl.

process_choice(_, Basket) :-
    write('Invalid choice. Please try again.'), nl,
    shopping_list(Basket).

display_items([]).
display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).

add_item(Item, Basket, NewBasket) :-
    append(Basket, [Item], NewBasket).
