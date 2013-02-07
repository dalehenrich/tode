as yet unclassified
activateElement
  self messagePattern isEmpty
    ifTrue: [ ^ self ].
  self topez setFindText: self messagePattern isRegex: self messagePatternIsRegex