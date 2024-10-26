-module(guard).
-export([max/2, filter/2, filter2/2, filter1/4,reverse/1]).

max(X, Y) when X > Y -> X;
max(_, Y) -> Y.

filter(_, []) -> 
  [];
filter(P, [H|T]) ->
  case P(H) of
    true -> [H | filter(P, T)];
    false -> filter(P, T)
  end.

filter2(_, []) -> 
  [];
filter2(P, [H|T]) ->
  filter1(P(H),H, P, T ).

filter1(true, H, P, T) -> [H|filter(P, T)];
filter1(false, _, P, T) -> filter(P, T).

reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].
