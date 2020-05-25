-module(e04).
-author("mathe").

%% API
-export([produtoEscalar/2]).

produtoEscalar([X1,Y1,Z1], [X2,Y2,Z2]) ->
  X1*X2 + Y1*Y2 + Z1*Z2.
