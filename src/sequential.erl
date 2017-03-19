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
-export([sum/1, sum/2, create/1, reverse_create/1]).

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
