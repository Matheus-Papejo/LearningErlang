-module(p06).
-author("mathe").

%% API
-export([list/1]).

list(Lista) ->
  Reverso = lists:reverse(Lista),
  if
    Lista == Reverso -> io:fwrite("Palindroma.\n") ;
    true -> io:fwrite("Nao e Palindroma.\n")
  end.


