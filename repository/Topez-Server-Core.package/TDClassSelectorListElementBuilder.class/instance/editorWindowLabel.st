as yet unclassified
editorWindowLabel
  ^ (self isMeta
    ifTrue: [ 'class for ' ]
    ifFalse: [ 'instance for ' ]) , self theClass name asString