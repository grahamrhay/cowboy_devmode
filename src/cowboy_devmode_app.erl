-module(cowboy_devmode_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
   Dispatch = cowboy_router:compile([{'_', [
        {"/", cowboy_static, {priv_file, cowboy_devmode, "static/index.html"}}
    ]}]),
    {ok, _} = cowboy:start_http(my_http_listener, 100, [{port, 8081}],
        [{env, [{dispatch, Dispatch}]}]
    ),
    cowboy_devmode_sup:start_link().

stop(_State) ->
    ok.
