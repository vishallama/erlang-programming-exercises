%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 17. Mar 2017 3:36 PM
%%%-------------------------------------------------------------------
-module(bool).
-author("vishal").

%% API
-export([b_not/1, b_and/2, b_or/2, b_nand/2]).


b_not(false) ->
  true;
b_not(true) ->
  false.

b_and(false, _B) ->
  false;
b_and(true, B) ->
  B.

b_or(true, _B) ->
  true;
b_or(false, B) ->
  B.

b_nand(A, B) -> b_not(b_and(A, B)).
