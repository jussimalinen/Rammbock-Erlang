-module(readfile).
-export([readfile/1, readfile/2]).

readfile(FileName, Length) ->
	{ok, FileId} = file:open(FileName, [read]),
	{ok, Str} = file:read(FileId, Length),
	file:close(FileId),
	Str.
readfile(Filename) -> readfile(Filename, 1000000).