%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. abr 2020 16:20
%%%-------------------------------------------------------------------
-module(p01).
-author("mathe").

%% API
-export([list/1]).

list([First|Rest]) ->
  if
    length(Rest) == 0 -> First;
    true -> lists:max(Rest)
  end.



