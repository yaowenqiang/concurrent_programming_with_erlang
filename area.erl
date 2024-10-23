-module(area).
-export([
        area/0, 
        area/1 
        ]).

area({square, X}) ->
  X*X;
area({rectangle, X ,Y}) -> 
  X * Y.

area() ->
  receive
    {square, X} ->
      print(X*X);
    {rectangle, X, Y} ->
      print(X*Y)
  end,
  area().


