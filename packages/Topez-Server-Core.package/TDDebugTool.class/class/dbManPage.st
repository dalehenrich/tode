as yet unclassified
dbManPage
  ^ 'NAME
    db - execute debugger commands

SYNOPSIS
    db <command> [args]

DESCRIPTION
    db break @<step-point> <class>[ class]>><selector> 
    db break clear [break-list-index] 
    db break enable [break-list-index]
    db break disable [break-list-index]
    db break list 
    db break steps <class>[ class]>><selector>
    db continue [stack-path]
    db down [stack-path]
    db frame <frame-index> [stack-path]
    db into [stack-path]
    db over [stack-path]
    db stack [stack-path]
    db up [stack-path]

    The default <stack-path> is /home/stack. If you use 
    the `debug` command to initiate debugging, then the 
    stack is automatically copied from .debug/stack to 
    /home/stack.
'