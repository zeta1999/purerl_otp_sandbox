%%%-------------------------------------------------------------------
%% @doc purerl_otp_sandbox public API
%% @end
%%%-------------------------------------------------------------------

-module(purerl_otp_sandbox_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    purerl_otp_sandbox_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
