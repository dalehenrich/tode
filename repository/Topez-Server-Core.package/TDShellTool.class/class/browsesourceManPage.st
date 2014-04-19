browse
browsesourceManPage
  | manPage |
  manPage := TDManPage
    fromString:
      'NAME
  browse source - Find and view strings in method source

SYNOPSIS
  browse source <regex-pattern>...
  browse source --exact <source-string>...

DESCRIPTION
  The `browse source` command brings up a method definition window on the
  methods whose source includes the specified substrings.

  With no options present, mathods whose source matches the given regex pattern
  are listed.

  With the --exect option present, only the methods whose source includes the 
  substring exactly are listed.

EXAMPLES
  browse source --exact `hello world`
  browse --scriptPath source `hello world`
'.
  ^ manPage