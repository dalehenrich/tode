as yet unclassified
labelMap
  labelMap
    ifNil: [ 
      labelMap := Dictionary new
        at: 'errors' put: #'unexpectedErrors';
        at: 'failures' put: #'unexpectedFailures';
        at: 'passed' put: #'expectedPasses';
        at: 'expectedDefects' put: #'expectedDefects';
        at: 'unexpectedPassed' put: #'unexpectedPasses';
        yourself ].
  ^ labelMap