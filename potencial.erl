%%%-------------------------------------------------------------------
%%% @author mathe
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. abr 2020 13:59
%%%-------------------------------------------------------------------
-module(potencial).
-author("mathe").

%% API
-export([v0/1,v1/1,function/0]).

v0(J) ->
  Y = (Ay=-5)+J*(Hy=1),
  U = matrix(0,J) = 0,
  U = matrix(Nx=10,J) = 0,
  if
    J == (Ny=10)-> v1(0) ;
    true -> v0(J+1)
  end.


v1(I) ->
  X = (Ax=-5)+I*(Hx=10),
  U = matrix(I,0) = 1,
  U = matrix(I,(Ny=10)),
  if
    I == (Nx=10) -> U ;
    true -> v1(I+1)
  end.

function() ->
  v0(0).