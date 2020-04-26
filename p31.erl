-module(p31).
-author("mathe").

%% API
-export([loop/3,prime/1]).

loop(Number,Test,Count) ->
  if
    (Number > Test) and (Number rem Test == 0) -> loop(Number, Test+1, Count+1);
    (Number > Test) and (Number rem Test /= 0)  -> loop(Number, Test+1, Count);
    Count > 2 -> io:fwrite ("Nao e primo.\n");
    true ->  io:fwrite ("Primo.\n")
  end.

prime(Number) ->
  loop(Number,1,0).