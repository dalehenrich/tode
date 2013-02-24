as yet unclassified
= anObject
  "Returns true if (a) the receiver and anObject are both kinds of Association, 
 (b) the receiver and anObject have equal keys and (c) the receiver and
 anObject have equal values.  Returns false otherwise."

  self == anObject
    ifTrue: [ ^ true ].
  (anObject isKindOf: Association)
    ifFalse: [ ^ false ].
  ^ key = anObject key and: [ self _value = anObject value ]