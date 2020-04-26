%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. abr 2020 19:27
%%%-------------------------------------------------------------------
-module(p09).
-author("mathe").

%% API
-export([loop/5,list/1]).

list(Lista) ->
  Final=[],
  loop(Lista,length(Lista),Final,1,1).

loop(Lista,X,Final,I,Count) ->
  A1=lists:nth(I,Lista),
  A2=lists:nth(I+1,Lista),
  if
    A1 == A2 -> loop(Lista,X,Final,I+1,Count+1);
    true -> lists:append([Final,lists:duplicate(Count,A1)])
  end,
  loop(Lista,X,Final,I+1,1).
%%%% REVER QUESTÃO %%%%%%%