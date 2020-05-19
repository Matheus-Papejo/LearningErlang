%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. mai 2020 16:40
%%%-------------------------------------------------------------------
-module(e10).
-author("mathe").

%% API
-export([co/1, f/1, g/1]).

co(X) -> f(g(X)).

%% Algumas expressões simples só para rodar a função composta.
g(X) -> X*2.

f(X) -> X+5.

