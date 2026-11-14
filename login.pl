% Task 2: Login page

% Dataset
user(fatima, 123).
user(sara, sa22).
user(layan, ll11).

max_attempts(3).

login :- attempt(1).

attempt(N) :-
    write('Enter username: '),
    read(U),
    write('Enter password: '),
    read(P),
    check(U, P, N).

% Correct login
check(U, P, _) :-
    user(U, P), !,
    write('Login Successful'), nl.

% Wrong login, attempts left
check(U, P, N) :-
    \+ user(U, P),
    max_attempts(Max),
    N < Max,
    write('Login Unsuccessful'), nl,
    N1 is N + 1,
    attempt(N1).

% Wrong login, no attempts left
check(U, P, N) :-
    \+ user(U, P),
    max_attempts(Max),
    N >= Max,
    write('Login Unsuccessful'), nl,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
