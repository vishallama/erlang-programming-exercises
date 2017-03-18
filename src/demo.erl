%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 18. Mar 2017 9:19 AM
%%%-------------------------------------------------------------------
-module(demo).
-author("vishal").

%% API
-export([double/1]).

double(Value) ->
  times(Value, 2).

times(X, Y) ->
  X*Y.
