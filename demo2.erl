-module(demo2).
-export([area/0]).
area() ->
  receive 
    {From, {square, X}} -> From ! X*X;
    {From, {rectangle, X, Y}} -> From ! X * Y
  end,
  area().

% erl
% c(demo2)
% Pid = spawn(dmow2, area, []).
% Pid ! {self(), {square, 10}}.
% receive
%   Reply -> Reply end.
