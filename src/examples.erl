%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 18. Mar 2017 4:02 PM
%%%-------------------------------------------------------------------
-module(examples).
-author("vishal").

%% API
-export([even/1, number/1]).

even(Int) when Int rem 2 == 0 -> true;
even(Int) when Int rem 2 == 1 -> false.

number(Num) when is_integer(Num) -> integer;
number(Num) when is_float(Num) -> float;
number(_Other) -> false.
