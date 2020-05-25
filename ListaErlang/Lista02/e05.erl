-module(e05).
-author("mathe").

%% API
-export([palindromo/1]).

palindromo([_]) ->
  true;

palindromo([First|Rest]) ->
  G = lists:last(Rest),
  if
    First == G -> palindromo(lists:droplast(Rest));
    true -> false
  end.