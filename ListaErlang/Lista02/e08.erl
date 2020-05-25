-module(e08).
-author("mathe").

%% API
-export([digitosRev/1, dobroAlternado/1]).

digitosRev(Num)  ->
  if
    Num > 0 ->  digitosRev(Num div 10);
    true -> ,
  end.

