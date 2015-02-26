as yet unclassified
batchRunTestSuite: suite
  | result defects |
  result := suite run.
  Transcript
    cr;
    show:
        '**************************************************************************************';
    cr;
    tab;
    show: 'Results for ' , suite name;
    cr;
    show: result printString;
    cr;
    show:
        '**************************************************************************************';
    cr.
  result failures notEmpty
    ifTrue: [ 
      Transcript
        show: '*** FAILURES ***';
        show: '****************';
        cr ].
  result failures
    do: [ :each | 
      Transcript tab
        show:
            each class name asString , ' debug: ' , each selector printString , '.';
        cr ].
  result errors notEmpty
    ifTrue: [ 
      Transcript
        show: '*** ERRORS ***';
        show: '****************';
        cr ].
  result errors
    do: [ :each | 
      Transcript tab
        show:
            each class name asString , ' debug: ' , each selector printString , '.';
        cr ].
  ^ result