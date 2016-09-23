as yet unclassified
theClass
  | cl |
  cl := self symbolList objectNamed: self theClassName.
  cl
    ifNil: [ 
      self halt.	"removed check in class organizer ... logic moved to TDClassHistoryDefinition>>theClass"
      ^ nil ].
  cl isBehavior
    ifFalse: [ ^ nil ].
  ^ cl