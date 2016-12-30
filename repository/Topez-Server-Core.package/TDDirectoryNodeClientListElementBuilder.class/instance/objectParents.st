as yet unclassified
objectParents
  | parent parents parentIndex |
  parents := {}.
  parent := (self object respondsTo: #'parent')
    ifTrue: [ self object parent ]
    ifFalse: [ ^ parents ].
  [ parent notNil ] whileTrue: [ parents add: parent.
      parent := (parent respondsTo: #'parent')
        ifTrue: [ parent parent ]
        ifFalse: [ nil ] ].
  ^ parents reverse