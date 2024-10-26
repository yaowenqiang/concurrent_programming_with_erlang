-module(pythag).
-export([pythag/1, perms/1]).
% 毕达哥拉斯三元数组(勾股定理)

pythag(N) ->
  [{A, B, C} ||
   A <- lists:seq(1,N),
   B <- lists:seq(1,N),
   C <- lists:seq(1,N),
   A + B + C =< N,
   A*A + B*B =:= C*C
  ].


% 回文构词
%
perms([]) -> [[]];
perms(L) -> [[H|T] || H <-L, T <- perms(L -- [H])].

