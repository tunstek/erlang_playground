-module(sort).
-export([bubble/1]).
-compile([debug_info]).

bubble([]) ->
    [];
bubble([H|[]]) ->
    [H];
bubble(L) ->
    bubble([],L,false).

bubble(Acc, [], false) ->
    Acc;
bubble(Acc, [], true) ->
    bubble(Acc);
bubble(Acc, [H|[]], Appended) ->
    bubble(lists:append(Acc,[H]), [], Appended);  
bubble(Acc, [H,J|T], _) when H=<J ->
    bubble(lists:append(Acc,[H]), lists:append([J], T), false);
bubble(Acc, [H,J|T], _) when H>J ->
    bubble(lists:append(Acc,[J]), lists:append([H], T), true).




