as yet unclassified
runManPage
  ^ 'NAME
  run - evaluate smalltalk expression

SYNOPSIS
  run [ <context-path> ]

DESCRIPTION
  If you are interested in manipulating the object that you are viewing in the 
  current node, you should use the `doit` command. If you want to manipulate
  the node itself or use objIn as the context, then you should use the `run` 
  command.

  The `run` command with no arguments, executes the smalltalk expression using 
  `objIn` as the evaluation context for the expression. 

  If an argument is supplied, the smalltalk expression is executed using the node
  specified by the <object-path> as the evaluation context.

  For example, after doing the following:

    doit > result
    #( 1 2 3)
    %

  One can see the difference between `run` and `doit` by comparing the result of 
  the `doit` command:

    doit result
    self class
    %
    ----> [Array class] Array

  against the result of the `run` command using the same expression:

    run result
    self class
    %
    ----> [TDObjectNode class] TDObjectNode
'