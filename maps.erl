-module(maps).
-export([]).

F1 = #{a => 1, b => 2}.

Facts = #{ {wife, fred} => "Sue", {age, fred} => 45,
           {daughter, fred} => "Mary",
           {likes, jim} => []}.

F3 = F1#{c => xx }.
F4 = F1#{c := 3 }.

% => 更新已有键的值 或者没有的时候添加新的键
% := 将现有的键更新为新值 ，如果键没有则失败
