cls
clsrename: theClass to: newName
  [ Smalltalk renameClassNamed: theClass name asString as: newName ]
    on: Warning
    do: [ :ex | ex resume ].
  self topez resetAllGlobalNames