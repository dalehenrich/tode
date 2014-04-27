commands
wsManPage
  ^ 'NAME
  ws - open workspace on an object

SYNOPSIS
  ws [--help] [@<object-path>]

DESCRIPTION
  The ws command opens a workspace on an object. 

  If no object path is specified, the workspace is opened on objIn.

OPTIONS
  --help
    Bring up this man page.

EXAMPLES
  ws --help
  browse class Object; ws
  ws @/home
'