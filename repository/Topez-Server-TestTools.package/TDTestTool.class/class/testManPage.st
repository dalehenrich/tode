as yet unclassified
testManPage
  ^ 'NAME
  test - execute sunit commands

SYNOPSIS
  test [--batch] class <class-name> [ <class-name> ... ]
  test [--batch] image
  test [--batch] package <package-name>
  test [--batch] project <configuration-base-name>
  test [--batch] suite <sunit-suite-file>
       suite @<sunit-suite-path>

DESCRIPTION
  Run a test suite and put the test results in the .tests halo node.

  The TestSuite instance is derived from the results of evaluating
  <sunit-suite-file> using objIn as the smalltalk node context.

EXAMPLES
'