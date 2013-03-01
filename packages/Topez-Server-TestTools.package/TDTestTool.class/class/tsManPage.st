as yet unclassified
tsManPage
  ^ 'NAME
  ts - execute test commands

SYNOPSIS
  ts <command> [args]

DESCRIPTION
  ts debug [errors|failures|
    passed|expectedDefects|unexpectedPassed|
    <test-spec>]
  ts list [<test-path>]
  ts run [<test-path>]

  The default <test-path> is /home/tests. If you use 
  the `test` command to initiate testinging.

  The <test-spec> is of the form:

    TestCaseClass>>testSelector
    TestClassClass
  
'