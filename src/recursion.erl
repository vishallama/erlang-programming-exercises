%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 19. Mar 2017 9:42 AM
%%%-------------------------------------------------------------------
-module(recursion).
-author("vishal").

%% API
-export([bump/1, average/1, even/1, member/2]).

bump([]) -> [];
bump([Head | Tail]) -> [Head + 1 | bump(Tail)].

average(List) -> sum(List) / len(List).

sum([]) -> 0;
sum([Head | Tail]) -> Head + sum(Tail).

len([]) -> 0;
len([_Head | Tail]) -> 1 + len(Tail).

even([]) -> [];
even([Head | Tail]) when Head rem 2 == 0 -> [Head | even(Tail)];
even([_Head | Tail]) -> even(Tail).

member(_X, []) -> false;
member(X, [X | _Tail]) -> true;
member(X, [_X | Tail]) -> member(X, Tail).
