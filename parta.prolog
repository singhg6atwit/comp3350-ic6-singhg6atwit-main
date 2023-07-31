:- use_module(library(lists)).

% Template for logic puzzle solver: (c) David Matuszek (UPenn)
% Puzzle: (c) Brainzilla
%
% Puzzle adapted from https://www.brainzilla.com/logic/logic-grid/basic-2/
%
% There are three children: Angela, Lisa, and Susan.
% The children have different pets: a cat, a dog, and a fish, and they all have different
% favorite colors: red, green, blue.
%
% Using the following hints, identify the pet and favorite colors.
% 
% 1. Lisa has a fish
% 2. Susan's favorite color is red
% 3. The kid who likes green also has a dog
% 4. Lisa's favorite color is not green

% TODO: List facts
fish(lisa).
red(susan).

% TODO: Specify rules
dog_with_green_angela :- green(angela), dog(angela).
not_green(lisa).

% Helper function to print the results
tell(N, C, P) :-
    format('~w\'s favorite color is ~w and has a ~w.~n', [N, C, P]).
