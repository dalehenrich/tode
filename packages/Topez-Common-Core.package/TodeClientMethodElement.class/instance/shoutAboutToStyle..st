as yet unclassified
shoutAboutToStyle: aPluggableShoutMorphOrView
  false
    ifTrue: [ 
      aPluggableShoutMorphOrView classOrMetaClass: self elementBehaviorForShout.
      ^ true ].
  ^ false