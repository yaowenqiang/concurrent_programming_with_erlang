-module(binary_demo).
-export([demo/0]).

demo() ->
  B1 = <<1,2,3>>,
  erlang:display(B1),
  B2 = <<"Hello">>,
  erlang:display(B2),
  B3 = <<66,66,67>>,
  erlang:display(B3),

  Bin1 = <<1,2,3>>,
  Bin2 = <<4,5>>,
  Bin3 = <<6>>,
  Combined = list_to_binary([Bin1, 1, [2,3,Bin2], 4|Bin3]),
  erlang:display(Combined),
  erlang:display(split_binary(Combined, 4)),
  B4 = term_to_binary({binaries, "are", useful}),
  erlang:display(B4),
  erlang:display(binary_to_term(B4)),
  erlang:display(byte_size(Combined)).
  % binary_to_term(Bin) -> Term

  




  


  
