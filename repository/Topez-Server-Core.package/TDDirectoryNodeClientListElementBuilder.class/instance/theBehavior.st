as yet unclassified
theBehavior
  | obj |
  obj := self object dotSelfObject.
  ^ obj isBehavior
    ifTrue: [ obj ]
    ifFalse: [ obj class ]