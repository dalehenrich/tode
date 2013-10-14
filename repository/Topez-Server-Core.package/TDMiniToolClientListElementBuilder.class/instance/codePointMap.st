keyboard actions
codePointMap
  | map |
  map := Dictionary new.
  $A codePoint to: $Z codePoint do: [ :codePoint | 
    map
      at: codePoint
      put: [ :modifierPressed :listElement :selectionIndex | 
        self theEditorSpec
          keyPressed: (Character codePoint: codePoint)
          listElement: listElement
          modifierPressed: modifierPressed
          selectionIndex: selectionIndex ] ].
  $a codePoint to: $z codePoint do: [ :codePoint | 
    map
      at: codePoint
      put: [ :modifierPressed :listElement :selectionIndex | 
        self theEditorSpec
          keyPressed: (Character codePoint: codePoint)
          listElement: listElement
          modifierPressed: modifierPressed
          selectionIndex: selectionIndex ] ].
  ^ map