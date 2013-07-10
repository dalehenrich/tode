as yet unclassified
tsManPage
  ^ 'NAME
  ts - execute test commands (debug, list, run)

SYNOPSIS
  ts debug <test-spec>
  ts list [<ds-level>]
  ts rerun
  ts run [errors|failures| passed|expectedDefects|unexpectedPassed]
     run <test-spec>
     run @<method-path>

DESCRIPTION

  The default <test-path> is /home/tests. If you use the `test` command to 
  initiate testing.

  <test-spec>:
    TestCaseClass>>testSelector
    TestClassClass
  <method-path> - path to a test method or test class
  
'