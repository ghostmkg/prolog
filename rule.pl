male(ram).
male(shyam).
male(jhon).
male(jim).

female(ann).
female(shita).
female(puja).
female(liz).

parent(ram,shita).
parent(jim,ann).
parent(jhon,liz).
parent(shyam,puja).
parent(jim,puja).
parent(jhon,ann).
parent(ann,shita).
parent(jim,jhon).
parent(puja,ann).
parent(shyam,jim).

father(X,Y) :-parent(X,Y), male(X).
brother(X,Y) :-male(X), parent(A,X), parent(A,Y), X\==Y.
mother(X,Y) :-parent(X,Y), female(X).
sister(X,Y) :-female(X), parent(A,X), parent(A,Y), X\==Y.