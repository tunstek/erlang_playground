-module(sort).
-export([bubble/1, insertion/1]).
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



insertion(L) ->
    insertionAcc([], L).

insertionAcc(Acc, []) ->
    Acc;
insertionAcc(Acc, [H|[]]) ->
    insert(Acc, H);
insertionAcc(Acc, [H|T]) ->
    insertionAcc(insert(Acc, H), T).

insert([], E) ->
    [E];
insert([H|T], E) when E >= H ->
    lists:append([H], insert(T, E));
insert([H|T], E) when E < H ->
    lists:append(lists:append([E], [H]), T).







