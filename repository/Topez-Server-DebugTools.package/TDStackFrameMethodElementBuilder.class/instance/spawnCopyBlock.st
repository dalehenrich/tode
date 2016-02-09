as yet unclassified
spawnCopyBlock
  "explicit direct reference to formatOnDisplay and formatOnAccept - nil should stay nil"

  self inClass ifNil: [ ^ nil ].
  ^ [ 
  | newObject |
  newObject := TDMethodDefinition
    className: self theClass name
    isMeta: self inClass isMeta
    selector: self selector.
  (TDMethodDefinitionElementBuilder new
    object: newObject;
    formatOnDisplay: formatOnDisplay;
    formatOnAccept: formatOnAccept;
    usePersistentClientElementCache: self usePersistentClientElementCache;
    yourself) buildClientElementUsing: self theEditorSpec editorAspect: nil ]