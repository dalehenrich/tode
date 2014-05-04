manPages
manManPage
  ^ 'NAME
  man - produce man page for a command

SYNOPSIS
  man --help
  man --all 
  man (<command-name> | @<command-path>) [<subcommand-name>]
  man --find [--exact] <pattern>...

DESCRIPTION
  The Man command opens a window containing the man page for the specified
  command or subcommand.

OPTIONS
  --all
    List man pages for all commands

  --exact
    See the --find option.

  --find
    Search the description and summary sections of the man page for each command. 
    By default the patterns are interpretted as regex expressions. If the --exact 
    option is present, the pattern is interpretted as a substring. 

    If multiple patterns are present, a match is returned if any one of the 
    patterns is matched within the description.

    A list window with the man page for each matching command is opened.

  --help
    Bring up this man page.

EXAMPLES
  man --help

  man --all

  man browse
  man browse class

  man --find --exact browse class
'