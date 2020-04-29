-module(p01).
-author("mathe").

%% API
-export([ultimo_da_lista/1]).

ultimo_da_lista([]) ->
  io:format("Nao ha elemento na lista. ~n");

ultimo_da_lista([First|Rest]) when Rest == [] ->
  io:format("O ultimo elemento da lista: ~p~n",[First]);

ultimo_da_lista([First|Rest]) ->
  ultimo_da_lista(Rest).


%list([First|Rest]) ->
% if
%    length(Rest) == 0 -> First;
%    true -> lists:last(Rest)
%  end.



