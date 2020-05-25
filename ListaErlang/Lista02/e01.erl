-module(e01).
-author("mathe").

%% API
-export([penultimo/1]).

penultimo([]) -> io:format("Tente Novamente: Lista Vazia.~n");

penultimo([_]) -> io:format("Tente Novamente: Lista com somente 1 elemento.~n");

penultimo([First,_]) -> io:format("Penultimo elemento: ~p ~n", [First]);

penultimo([_|Rest]) -> penultimo(Rest).



