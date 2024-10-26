-module(quick_sort).
-export([quick_sort/1]).

quick_sort([]) -> [];
quick_sort([Pivot|T]) -> 
          quick_sort([X || X <-T, X < Pivot]) 
          ++ [Pivot] ++
          quick_sort([X || X <-T, X >= Pivot]).


