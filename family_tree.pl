% Basic facts
parent(john, mary).
parent(john, david).
parent(susan, mary).
parent(susan, david).

parent(mary, linda).
parent(mary, tom).
parent(james, linda).
parent(james, tom).

parent(david, alice).
parent(david, mark).
parent(sophia, alice).
parent(sophia, mark).

male(john).
male(david).
male(james).
male(tom).
male(mark).

female(susan).
female(mary).
female(linda).
female(sophia).
female(alice).

% Derived relationships

% Grandparent Rule
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Sibling Rule (X and Y have the same parent and are not the same person)
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Cousin Rule (Their parents are siblings)
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Children Rule
child(X, Y) :- parent(Y, X).

% Descendant Rule using recursion
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Z, X), descendant(Z, Y).
