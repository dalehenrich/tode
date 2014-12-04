as yet unclassified
objectValueForSpecialElementName: elementName for: anObject
  elementName = '(oop)'
    ifTrue: [ ^ Reflection oopOf: anObject ].
  elementName = '(class)'
    ifTrue: [ ^ Reflection classOf: anObject ].
  elementName = '(value)'
    ifTrue: [ ^ anObject asString ].
  elementName = '(invariant)'
    ifTrue: [ ^ anObject isInvariant ].
  elementName = '(committed)'
    ifTrue: [ ^ anObject isCommitted ].
  elementName = '(dependents)'
    ifTrue: [ ^ DependencyList for: anObject ].
  elementName = '<<more>>'
    ifTrue: [ 
      ^ 'You can only see the first ' , self indexableWindowSize printString
        ,
          ' elements. Use the ''set window size'' menu item to change the default window size or open Workspace (esc) and write an expression to view the segment of the collection that you are interested in.' ].
  ^ nil