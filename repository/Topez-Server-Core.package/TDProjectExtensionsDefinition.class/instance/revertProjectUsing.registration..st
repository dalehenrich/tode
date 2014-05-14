actions
revertProjectUsing: aProjectTool registration: aProjectRegistration
  | nodeName revertScript |
  nodeName := self commandMap
    at: 'revert'
    ifAbsent: [ 
      [ ^ self loadProjectUsing: aProjectTool registration: aProjectRegistration ]
        on:
          MetacelloIgnorePackageLoaded , MetacelloSkipDirtyPackageLoad , Warning
        do: [ :ex | 
          "force load of modified packages"
          (ex isKindOf: Warning)
            ifTrue: [ ex resume ].
          (ex isKindOf: MetacelloSkipDirtyPackageLoad)
            ifTrue: [ ex resume: false ].
          ex resume: ex packageSpec workingCopy modified ] ].
  revertScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  ^ aProjectTool topez
    evaluateCommandString:
      revertScript printString , '--extensionCall --projectName=' , self projectName