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
-export([new/0, destroy/1, write/3]).

new() -> [].

destroy(_Db) -> ok.

write(Key, Element, Db) -> [{Key, Element} | Db].
