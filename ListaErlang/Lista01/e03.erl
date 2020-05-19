%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. mai 2020 15:22
%%%-------------------------------------------------------------------
-module(e03).
-author("mathe").

%% API
-export([duas_tuplas/2]).

duas_tuplas(T1, T2) -> {{element(2,T1),element(2,T2)},{element(1,T1),element(1,T2)}}.