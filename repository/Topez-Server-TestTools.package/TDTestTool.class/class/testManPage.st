as yet unclassified
testManPage
  ^ 'NAME
  test - execute sunit commands

SYNOPSIS
  test <sunit-suite-file>
       @<sunit-suite-path>

DESCRIPTION
  Run a test suite and put the test results in the .tests halo node.

  The TestSuite instance is derived from the results of evaluating
  <sunit-suite-file> using objIn as the smalltalk node context.

  Examples:

    test /home/sunit
'