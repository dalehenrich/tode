accessing
local: aString
  (aString beginsWith: 'fatal')
    ifTrue: [ self halt ].
  local := aString