as yet unclassified
defaultEditorWindowLocation
  ^ self object theBehavior isMeta
    ifTrue: [ 'classSelectors' ]
    ifFalse: [ 'instanceSelectors' ]