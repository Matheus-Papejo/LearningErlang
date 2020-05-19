%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. mai 2020 16:06
%%%-------------------------------------------------------------------
-module(e06).
-author("mathe").

%% API
-export([ouperador/2]).

ouperador(false, false) -> false;

ouperador(_, _) -> true.