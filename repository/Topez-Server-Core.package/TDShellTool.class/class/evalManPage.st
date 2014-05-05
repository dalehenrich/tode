manPages
evalManPage
  ^ 'NAME
  eval - Evaluate Smalltalk expression

SYNOPSIS
  eval [--help] <smalltalk-expression>...

DESCRIPTION
  The `eval` command evaluates the given Smalltalk expression and returns the result
  as objOut. 

  objIn is used as the context of expression (i.e., `self`).

OPTIONS
  --help
    Bring up this man page.

EXAMPLES
  eval --help
  eval `3+4`
'