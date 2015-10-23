cls
clsrename: theClass to: newName
  | beditTool |
  beditTool := self topez toolInstanceFor: 'bedit'.
  beditTool
    beditReferences: theClass name
    regex: theClass name
    replacementString: newName
    windowLabel:
      'References to renamed class: ' , theClass name asString , ' -> ' , newName.
  [ Smalltalk renameClassNamed: theClass name asString as: newName ]
    on: Warning
    do: [ :ex | ex resume ].
  self topez resetAllGlobalNames