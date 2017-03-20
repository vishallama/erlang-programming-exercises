%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 19. Mar 2017 11:47 AM
%%%-------------------------------------------------------------------
-module(sequential).
-author("vishal").

%% API
-export([
  sum/1, sum/2, create/1, reverse_create/1, print_integers/1, print_even_integers/1,
  filter/2, reverse/1, concatenate/1]).

% Ex 3-1: Evaluating Expressions
sum(0) ->
  0;
sum(N) when N > 0 ->
  N + sum(N - 1).

sum(N, N) ->
  N;
sum(N, M) when N =< M ->
  N + sum(N + 1, M).

% Ex 3-2: Creating Lists
create(N) when N > 0 -> create(N, []).

create(0, List) ->
  List;
create(N, List) ->
  create(N - 1, [N | List]).

reverse_create(N) when N > 0 -> reverse_create(N, 1, []).

reverse_create(N, N, List) ->
  [N | List];
reverse_create(N, M, List) when N > M ->
  reverse_create(N, M + 1, [M | List]).

print_integers(N) when N > 0 -> print_integers(1, N).

print_integers(N, N) ->
  io:format("Number: ~p~n", [N]);
print_integers(M, N) when M < N ->
  io:format("Number: ~p~n", [M]),
  print_integers(M + 1, N).

print_even_integers(N) when N > 0 -> print_even_integers(2, N).

print_even_integers(M, N) when M > N ->
  io:format("", []);
print_even_integers(M, N) ->
  io:format("Number: ~p~n", [M]),
  print_even_integers(M + 2, N).

% Ex 3-5: Manipulating Lists

filter([], _N) ->
  [];
filter([Head | Tail], N) when Head =< N ->
  [Head | filter(Tail, N)];
filter([_Head | Tail], N) ->
  filter(Tail, N).

reverse(List) -> reverse(List, []).

reverse([], AccList) ->
  AccList;
reverse([Head | Tail], AccList) ->
  reverse(Tail, [Head | AccList]).

concatenate([]) ->
  [];
concatenate([Head | Tail]) ->
  Head ++ concatenate(Tail).
