actions
installProjectUsing: aProjectTool registration: aProjectRegistration
  self installScript isEmpty
    ifFalse: [ 
      [ aProjectTool topez evaluateCommandString: self installScript ]
        on: TDProjectEntryOutermostProjectPath
        do: [ :ex | 
          | theProjectPath |
          "outerMost nonNil projectPath is the winner"
          theProjectPath := self projectPath.
          ex outer
            ifNotNil: [ :outerProjectPath | theProjectPath := outerProjectPath ].
          ex resume: theProjectPath ] ]