as yet unclassified
doitManPage
  ^ 'NAME
  doit - evaluate smalltalk expression

SYNOPSIS
  doit [ <object-path> ]

DESCRIPTION
  If you are interested in manipulating the object that you are viewing in the 
  current node, you should use the `doit` command. If you want to manipulate
  the node itself or use objIn as the context, then you should use the `run` 
  command.

  The `doit` command with no arguments, executes the smalltalk expression using 
  the object in the current node as the evaluation context for the expression 
  (i.e., the result of sending #dotSelfObject to the current node). 

  If an argument is supplied, the smalltalk expression is executed using the object
  in the node specified by <object-path> as the evaluation context (i.e., the 
  result of sending #dotSelfObject to the specified node).

  For example, after doing the following:

    doit > result
    #( 1 2 3)
    %

  One can see the difference between `run` and `doit` by comparing the result of 
  the `doit` command:

    doit result
    self class
    %

    [Array class] Array

  to the result of the `run` command using the same expression:

    run result
    self class
    %

    [TDObjectNode class] TDObjectNode
'