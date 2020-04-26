-module(p03).
-author("mathe").

%% API
-export([list/2]).

list([First|Rest],Num) ->
  if
    Num == 1 -> First;
    length(Rest) < (Num-1) -> io:fwrite("Nao existe esta posicao na lista\n");
    true -> lists:nth(Num-1,Rest)
  end.
