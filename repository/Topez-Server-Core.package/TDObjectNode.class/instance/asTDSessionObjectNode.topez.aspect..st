as yet unclassified
asTDSessionObjectNode: parentNode topez: aTopez aspect: aBuilderAspect
  "Create a node with a non-persisent connection to self ..."

  "if we're using the #inspect builderAspect then we want to see the node itself, not the dotSelfObject"

  aBuilderAspect ~~ #'inspect'
    ifTrue: [ ^ self copy ].
  ^ super asTDSessionObjectNode: parentNode topez: aTopez aspect: aBuilderAspect