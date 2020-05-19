%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. mai 2020 15:32
%%%-------------------------------------------------------------------
-module(e04).
-author("mathe").

%% API
-export([palavra/1, palindromo/2]).

palavra(P) -> palindromo(P, lists:reverse(P)).

palindromo([], []) -> io:format("Palindromo!~n");

palindromo([N|Normal], [I|Inverso]) ->
  if
     N == I -> palindromo(Normal, Inverso) ;
    true -> io:format("Nao e palindromo.~n")
  end.
