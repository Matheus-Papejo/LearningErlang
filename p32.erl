-module(p32).
-author("mathe").

%% API
-export([loop/4,gdc/2]).

loop(N1, N2, Test, Count) ->
  if
    ((N1 > N2) and (Test == N1)) or ((N2 > N1) and (Test == N2)) -> Count;
    (N1 rem Test == 0) and (N2 rem Test == 0) -> loop(N1,N2,Test+1,Test);
    (N1 rem Test /= 0) or (N2 rem Test /= 0) -> loop(N1,N2,Test+1,Count);
    true -> Count
  end.

gdc(N1, N2) ->
  loop(N1, N2, 1, 0).
