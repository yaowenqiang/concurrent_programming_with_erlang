-module(count_chars).
-export([count_characters/1]).
count_characters(Str) ->
  count_characters(Str, #{}).

%count_characters([H|T], #{ H := N} = X) -> 
%  count_characters(T, X#{H := N + 1});
%count_characters([H|T], X) -> 
%  count_characters(T, X#{H => 1});
count_characters([H|T], X) -> 
  case maps:get(H, X, undefined) of
    undefined -> count_characters(T, X#{H => 1});
    N -> count_characters(T, X#{H := N + 1})
  end;
count_characters([], X) -> 
  X.


