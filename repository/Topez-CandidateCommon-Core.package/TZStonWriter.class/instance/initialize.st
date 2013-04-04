initialize-release
initialize
    super initialize.
    false ifTrue: [ prettyPrint := true].
    objectLevel := 0.
    levelLimit := 0