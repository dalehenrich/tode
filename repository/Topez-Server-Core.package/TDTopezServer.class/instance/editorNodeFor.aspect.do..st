accessing
editorNodeFor: anObject aspect: anAspect do: aBlock
  self
    editorNodeClassNameFor: anObject
    aspect: anAspect
    do: [ :className :finalAspect | | editorClass |
      editorClass := self todeEnvironment globalNamed: className.
      aBlock value: (editorClass new
            object: anObject;
            yourself) value: finalAspect ]