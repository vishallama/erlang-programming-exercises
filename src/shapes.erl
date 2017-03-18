%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 18. Mar 2017 9:22 AM
%%%-------------------------------------------------------------------
-module(shapes).
-author("vishal").

%% API
-export([area/1]).

area({square, Side}) ->
  Side * Side;
area({circle, Radius}) ->
  math:pi() * Radius * Radius;
area({triangle, A, B, C}) ->
  S = (A + B + C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));
area(_) ->
  {error, invalid_object}.
