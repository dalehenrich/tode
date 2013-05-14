as yet unclassified
tsManPage
  ^ 'NAME
  ts - execute test commands (debug, list, run)

SYNOPSIS
  ts debug [errors|failures| passed|expectedDefects|unexpectedPassed]
     debug <test-spec>
     debug @<method-path>
  ts list [<ds-level>]
  ts run

DESCRIPTION

  The default <test-path> is /home/tests. If you use the `test` command to 
  initiate testing.

  <test-spec>:
    TestCaseClass>>testSelector
    TestClassClass
  <method-path> - path to a test method or test class
  
'