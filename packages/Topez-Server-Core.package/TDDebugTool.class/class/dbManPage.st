as yet unclassified
dbManPage
    ^ 'NAME
    db - execute debugger commands

SYNOPSIS
    db <command> [args]

DESCRIPTION
    db down [stack-path]
    db up [stack-path]
    db frame <frame-index> [stack-path]
    db stack [stack-path]
    db step [into|over] [stack-path]
    db continue [stack-path]

    The default <stack-path> is /home/stk. If you use the `debug`
    command to initiate debugging, then the stack is 
    automatically copied from .ex/debug to /home/stk.
'