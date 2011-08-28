-module(percompile).
-export([compile/1]).
compile(SetFile) ->
    asn1ct:compile(SetFile, [per]).
    