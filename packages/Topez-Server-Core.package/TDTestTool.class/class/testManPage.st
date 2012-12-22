as yet unclassified
testManPage
  ^ 'NAME
  test - execute sunit commands

SYNOPSIS
  test <smalltalk-node-name> [ <node-name> ]

DESCRIPTION
  Run a test suite and put the test results in the node
  /home/tests/<node-name>. If <node-name> is not supplied,
  the name of <smalltalk-node-name> is used.

  The TestSuite instance is derived from the results of evaluating
  <smalltalk-node-name> using objIn as the smalltalk node context.

  Examples:

    test sunit
    test ./sunit xxx
'