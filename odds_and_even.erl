-module(odds_and_even).
-export([odds_and_even/1, odds_and_even2/1]).

odds_and_even(L) -> 
  Odds = [X || X <- L, (X rem 2) =:= 1],
  Evens = [X || X <- L, (X rem 2) =:= 0],
  {Odds, Evens}.

odds_and_even2(L) -> 
  odds_and_evens_acc(L, [], []).

% accumulator (归集器)
%
odds_and_evens_acc([H|T], Odds, Evens) -> 
  case (H rem 2) of
    1 -> odds_and_evens_acc(T, [H|Odds], Evens);
    0 -> odds_and_evens_acc(T, Odds, [H|Evens])
  end;
odds_and_evens_acc([], Odds, Evens) ->
  {Odds, Evens}.
