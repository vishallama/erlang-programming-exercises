%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 9:50 AM
%%%-------------------------------------------------------------------
-module(db_lists).
-author("vishal").

%% API
-export([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

new() -> [].

destroy(_Db) -> ok.

write(Key, Element, Db) -> [{Key, Element} | Db].

delete(Key, Db) ->
  lists:keydelete(Key, 1, Db).

read(Key, Db) ->
  case lists:keyfind(Key, 1, Db) of
    false -> {error, instance};
    {_Key, Element} -> {ok, Element}
  end.

match(Element, Db) ->
  lists:filtermap(
    fun({K, E}) ->
      case Element == E of
        true -> {true, K};
        false -> false
      end
    end, Db).
