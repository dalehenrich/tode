as yet unclassified
tsManPage
  ^ 'NAME
  ts - execute test commands

SYNOPSIS
  ts <command> [args]

DESCRIPTION
  ts debug <test-spec>
  ts list [<test-path>]
  ts run [<test-path>]

  The default <test-path> is /home/tests. If you use 
  the `test` command to initiate testinging.

  If <test-spec> is `errors` or `failures`, then the set of the test cases
  in the corresponding category are selected.

  Otherwise, <test-spec> is of the form:

    TestCaseClass>>testSelector
  
'