client list element
syntheticFrameMap
  | map |
  map := super syntheticFrameMap.
  (self isMethodForBlock and: [ self homeContext notNil ])
    ifTrue: [ map add: '(homeContext)' -> #'homeContext' ].
  ^ map