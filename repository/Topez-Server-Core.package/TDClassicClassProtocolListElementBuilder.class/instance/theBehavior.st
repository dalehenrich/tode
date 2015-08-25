accessing
theBehavior
  | cl |
  cl := self theClass.
  self isMeta
    ifTrue: [ cl := cl class ].
  ^ cl