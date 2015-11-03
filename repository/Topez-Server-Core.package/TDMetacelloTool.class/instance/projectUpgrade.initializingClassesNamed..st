project api
projectUpgrade: installBlock initializingClassesNamed: classesNeedingInitialization
  installBlock
    on: MCPerformPostloadNotification
    do: [ :ex | 
      (classesNeedingInitialization
        includes: ex postloadClass theNonMetaClass name asString)
        ifTrue: [ ex resume: true ]
        ifFalse: [ 
          Transcript
            cr;
            show:
                '  Skip ' , ex postloadClass name asString , ' initialization.'.
          ex resume: false ] ]