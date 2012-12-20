as yet unclassified
dbManPage
    ^ 'NAME
    db - execute debugger commands

SYNOPSIS
    db <command> [args]

DESCRIPTION
    db break @<step-point> <class>[ class]>><selector> 
    db break clear [@<step-point> <class>[ class]>><selector>] 
    db break enable [list-item]
    db break disable [list_item>]
    db continue [stack-path]
    db down [stack-path]
    db frame <frame-index> [stack-path]
    db into [stack-path]
    db over [stack-path]
    db stack [stack-path]
    db steps <class>[ class]>><selector>
    db up [stack-path]

    The default <stack-path> is /home/stk. If you use the `debug`
    command to initiate debugging, then the stack is 
    automatically copied from .ex/debug to /home/stk.
'