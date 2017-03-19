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
-export([sum/1]).

% Ex 3-1: Evaluating Expressions
sum(0) ->
  0;
sum(N) when N > 0 ->
  N + sum(N - 1).
