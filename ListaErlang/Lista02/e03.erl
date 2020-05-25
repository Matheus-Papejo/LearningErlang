-module(e03).
-author("mathe").

%% API
-import(lists,[sum/1]).
-export([perfeitos/1, perfeitos/2, perfeitos/3]).

perfeitos(Range, [N|Rest], M) ->
  if
    N rem M == 0 ->  perfeitos(Range, [N/M]++Rest, M);
    Range == M -> perfeitos(Range, Rest);
    true -> perfeitos(Range, [N]++Rest, M+1)
  end.

perfeitos(N, [First,Second|Rest]) -> perfeitos(N,lists:append([First+Second],Rest));

perfeitos(N, [X]) when N == X -> N.

perfeitos(1) -> io:format("Estes são os números perfeitos.~n");

perfeitos(N) ->
  perfeitos(N, [N], 2),
  perfeitos(N-1).

