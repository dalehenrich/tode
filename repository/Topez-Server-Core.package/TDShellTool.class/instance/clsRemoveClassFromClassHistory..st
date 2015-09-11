cls
clsRemoveClassFromClassHistory: theClass
  | history |
  history := theClass classHistory.
  history current == theClass
    ifTrue: [ 
      | refs ar newVersion |
      "removing the current version - replace current version in symbol list with new current version"
      refs := self findReferences: theClass name.
      (ar := System myUserProfile dictionaryAndSymbolOf: theClass)
        ifNil: [ 
          self
            error:
              'The class' , theClass name
                ,
                  ' is not reachable from your symbol list, so the removal has been aborted.' ].
      history removeVersion: theClass.
      (ar at: 1) removeKey: (ar at: 2).
      newVersion := history current.
      (ar at: 1) at: (ar at: 2) put: newVersion.
      ClassOrganizer clearCachedOrganizer.
      self topez resetAllGlobalNames.
      refs isEmpty
        ifFalse: [ self browseMethodsBlock: [ refs ] label: 'References to class ' , theClass name ] ]
    ifFalse: [ 
      "removing an old version ... just remove from class history"
      history removeVersion: theClass ].
  ^ true