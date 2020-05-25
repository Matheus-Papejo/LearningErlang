-module(e02).
-author("mathe").

%% API
-export([maximoLocal/1]).

maximoLocal([]) -> io:format("Lista Vazia.~n");

maximoLocal([_]) -> io:format("Somente 1 elemento, necessario 3 no minimo.~n");

maximoLocal([_,_]) -> io:format("Somente 2 elemento, necessario 3 no minimo.~n");

maximoLocal([First,Second,Third|Rest]) ->
  if
    (Second > First) and (Second > Third) -> io:format("~p : Maximo Local.~n", [Second]);
    true -> false
  end,
  maximoLocal([Second]++[Third]++Rest).