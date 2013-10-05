as yet unclassified
editorWindowLabel
  ^ self isMeta
    ifTrue: [ 'class' ]
    ifFalse: [ 'instance' ]