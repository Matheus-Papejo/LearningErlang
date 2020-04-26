-module(p04).
-author("mathe").

%% API
-export([list/1]).

list([First|Rest]) ->
    length([First]) + length(Rest).


