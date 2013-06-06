as yet unclassified
asTDObjectNode: parentNode topez: aTopez aspect: aBuilderAspect
  "if we're using the #inspect builderAspect then we want to see the node itself, not the dotSelfObject"

  aBuilderAspect ~~ #'inspect'
    ifTrue: [ ^ self copy ].
  ^ super asTDObjectNode: parentNode topez: aTopez aspect: aBuilderAspect