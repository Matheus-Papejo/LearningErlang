-module(p02).
-author("mathe").

%% API
-export([list/1]).

list([First|Rest]) ->
  if
    length(Rest) == 0 -> First;
    length(Rest) == 1 -> [First|Rest];
    length(Rest) == 2 -> Rest;
    true -> [lists:nth(1, lists:reverse(Rest)), lists:nth(2, lists:reverse(Rest))]
  end.