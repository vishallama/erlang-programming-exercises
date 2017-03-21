%%%-------------------------------------------------------------------
%%% @author vishal
%%% @copyright (C) 2017
%%% @doc
%%%
%%% @end
%%% Created : 21. Mar 2017 8:53 AM
%%%-------------------------------------------------------------------
-module(echo).
-author("vishal").

%% API
-export([go/0, loop/0]).

go() ->
  Pid = spawn(echo, loop, []),
  Pid ! {self(), hello},
  receive
    {Pid, Msg} ->
      io:format("~w~n", [Msg])
  end,
  Pid ! stop.

loop() ->
  receive
    {From, Msg} ->
      io:format("Message ~w received by child~n", [Msg]),
      From ! {self(), Msg},
      loop();
    stop ->
      true
  end.
