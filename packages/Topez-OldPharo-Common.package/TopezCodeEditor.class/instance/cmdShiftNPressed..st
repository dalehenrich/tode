accessing
cmdShiftNPressed: aSmalltalkEditor
  | list aVariableOrClassName |
  aSmalltalkEditor selectLine.
  self edittingCode
    ifTrue: [ 
      list := self topez
        referencesTo: aVariableOrClassName
        isMeta: self model sourceElement isMeta
        in: self model sourceElement elementClass.
      self topez
        editList: list
        label: 'References to ' , aVariableOrClassName
        inWindow: (self topez windowIdNamed: #'messages')
        at: 'implementors' ]
    ifFalse: [ ^ aSmalltalkEditor morph flash ]