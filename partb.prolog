:- use_module(library(clpfd)).

% Using the CLP(FD) library, solve the loaves of bread puzzle.
% A, B, C, D, E are the number of loaves of bread in increasing order.
% First specify the range of possible values,
% Then specify the rules
% Last, use labeling to convert rules to concrete answers.
solve(A, B, C, D, E) :-

    A in 1..5,
    B in 1..5,
    C in 1..5,
    D in 1..5,
    E in 1..5,

    A #< B,
    B #< C,
    C #< D,
    D #< E,
    A + B + C + D + E #= 15,

    label([A, B, C, D, E]).