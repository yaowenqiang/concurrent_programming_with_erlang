-module(stack_trace).
-export([demo3/0]).

demo3() -> 
  try math:sqrt(-1)
  catch
      _:_:Stacktrace ->
      erlang:display(Stacktrace)
      %io:format("Backtrace ~p~n", Stacktrace)

  end.
