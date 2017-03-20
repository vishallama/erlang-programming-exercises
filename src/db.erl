%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 19. Mar 2017 9:18 PM
%%%-------------------------------------------------------------------
-module(db).
-author("vishal").

%% API
-export([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

new() -> [].

destroy(_Db) -> ok.

write(Key, Element, Db) -> [{Key, Element} | Db].

delete(_Key, []) ->
  [];
delete(Key, [{Key, _Element} | Tail]) ->
  Tail;
delete(Key, [{_K, _E} = V | Tail]) ->
  [V | delete(Key, Tail)].

read(_Key, []) ->
  {error, instance};
read(Key, [{Key, Element} | _Tail]) ->
  {ok, Element};
read(Key, [{_K, _E} | Tail]) ->
  read(Key, Tail).

match(_Element, []) ->
  [];
match(Element, [{Key, Element} | Tail]) ->
  [Key | match(Element, Tail)];
match(Element, [{_K, _E} | Tail]) ->
  match(Element, Tail).
