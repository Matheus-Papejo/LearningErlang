%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. mai 2020 16:24
%%%-------------------------------------------------------------------
-module(e07).
-author("mathe").

%% API
-export([opErador/2]).

opErador(true,true) -> true;

opErador(_, _) -> false.
