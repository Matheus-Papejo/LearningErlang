-module(p05).
-author("mathe").

%% API
-export([list/1]).

list([First|Rest]) ->
  Final = lists:append([[First],Rest]),
  lists:reverse(Final).
