-module(useless).
-export([fac/1]).

add(A,B) ->
  A+B.

multiply(A,B) ->
    A*B.

subtract(A,B) ->
    A-B.


r_add(0, B) ->
    B;
r_add(A,B) ->
    1+r_add(A-1,B).


power(_, 0) ->
    1;
power(A,1) ->
    A;
power(A,B) ->
    A*power(A,B-1).


fac(0) ->
    1;
fac(N) ->
    N * fac(N-1).







