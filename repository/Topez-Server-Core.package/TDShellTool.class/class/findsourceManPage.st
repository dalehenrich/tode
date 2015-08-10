manPages
findsourceManPage
  | manPage |
  manPage := TDManPage commandName: 'source' fromString: 'NAME
  find source - Find strings in method source

SYNOPSIS
  find source [--case] <regex-pattern>...
  find source --exact [--noCase] <source-string>...

DESCRIPTION
  The `find source` command returns a list of method definitions whose source includes 
  the specified substrings.

  With no options present, mathods whose source matches the given regex pattern
  are listed.

  With the --case option present, the regex search will be case sensitive.

  With the --exact option present, only the methods whose source includes the 
  substring exactly (case sensitive) are listed .

  With the --exact and --noCase options present, the substring search will be case insensitive.

EXAMPLES
  find source --exact `Hello world`
  find source --exact --noCase `hello world`

  find source `hello world`
  find source --case `Hello World`

  find --scriptPath source `hello world`
'.
  ^ manPage