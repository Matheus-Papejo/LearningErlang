-module(p02).
-author("mathe").

%% API
-export([dois_ultimos/1]).

dois_ultimos([]) ->
  io:format("Nao ha elemento na lista. ~n");

dois_ultimos([First|Rest]) when length(Rest) == 0 ->
  io:format("So ha um elemento na lista. ~n");

dois_ultimos([First|Rest]) when length(Rest) == 1 ->
  io:format("Os dois ultimos elementos da lista sao: ~p ~n",[[First]++Rest]);

dois_ultimos([First|Rest]) ->
  dois_ultimos(Rest).

%list([First|Rest]) ->
%  if
%    length(Rest) == 0 -> First;
%    length(Rest) == 1 -> [First|Rest];
%    length(Rest) == 2 -> Rest;
%    true -> [lists:nth(1, lists:reverse(Rest)), lists:nth(2, lists:reverse(Rest))]
%  end.