manPages
browsesourceManPage
  | manPage |
  manPage := TDManPage
    commandName: 'source'
    fromString:
      'NAME
  browse source - Find and view strings in method source

SYNOPSIS
  browse source [--case] <regex-pattern>...
  browse source --exact [--noCase] <source-string>...

DESCRIPTION
  The `browse source` command brings up a method definition window on the
  methods whose source includes the specified substrings.

  With no options present, mathods whose source matches the given regex pattern
  are listed.

  With the --case option present, the regex search will be case sensitive.

  With the --exact option present, only the methods whose source includes the 
  substring exactly (case sensitive) are listed .

  With the --exact and --noCase options present, the substring search will be case insensitive.

EXAMPLES
  browse source --exact `Hello world`
  browse source --exact --noCase `hello world`

  browse source `hello world`
  browse source --case `Hello World`

  browse --scriptPath source `hello world`
'.
  ^ manPage