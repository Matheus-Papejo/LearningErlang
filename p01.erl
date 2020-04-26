-module(p01).
-author("mathe").

%% API
-export([list/1]).

list([First|Rest]) ->
  if
    length(Rest) == 0 -> First;
    true -> lists:last(Rest)
  end.



