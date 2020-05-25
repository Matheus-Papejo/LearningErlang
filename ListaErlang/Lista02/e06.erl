-module(e06).
-author("mathe").

%% API
-export([ordenaListas/1, ordenaListas/2]).

ordenaListas([First|Rest], Ord, Newlista) ->
  lists:nth(Ord, Newlista) = [First],
  ordenaListas(Rest, Newlista).

ordenaListas([], Newlista) ->
  io:format("Nova lista ordenada: ~p~n", Newlista);

ordenaListas([First|Rest], Newlista) ->
  ordenaListas([First]++Rest, length([First]), Newlista).

ordenaListas([First|Rest]) ->
  ordenaListas([First]++Rest, length([First]), []).
