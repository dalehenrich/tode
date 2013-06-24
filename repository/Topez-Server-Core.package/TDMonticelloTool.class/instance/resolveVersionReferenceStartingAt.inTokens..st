as yet unclassified
resolveVersionReferenceStartingAt: index inTokens: versionTokens
  | versionName repoSpec mcVersion nextIndex |
  versionName := versionTokens at: index.
  mcVersion := (versionName beginsWith: '@')
    ifTrue: [ 
      nextIndex := index + 1.
      self resolveAtPathReference: versionName ]
    ifFalse: [ 
      repoSpec := versionTokens at: index + 1.
      nextIndex := index + 2.
      self versionFor: versionName in: repoSpec ].
  ^ {mcVersion.
  nextIndex}