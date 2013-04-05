as yet unclassified
tsManPage
  ^ 'NAME
  ts - execute test commands (debug, list, run)

SYNOPSIS
  ts <command> [args]

DESCRIPTION
  ts debug [errors|failures|
    passed|expectedDefects|unexpectedPassed|
    <test-spec>]
  ts list [<ds-level>]
  ts run

  The default <test-path> is /home/tests. If you use 
  the `test` command to initiate testinging.

  The <test-spec> is of the form:

    TestCaseClass>>testSelector
    TestClassClass
  
'