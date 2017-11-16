project api
projectUpgrade: installBlock initializingClassesNamed: classesNeedingInitialization
  installBlock
    on: MCPerformPostloadNotification
    do: [ :ex | 
      (classesNeedingInitialization
        includes: (ex perform: #'postloadClass') theNonMetaClass name asString)
        ifTrue: [ ex resume: true ]
        ifFalse: [ 
          Transcript
            cr;
            show:
                '  Skip ' , (ex perform: #'postloadClass') name asString , ' initialization.'.
          ex resume: false ] ]