as yet unclassified
spawnCopyBlock
  self inClass ifNil: [ ^ nil ].
  ^ [ 
  | newObject |
  newObject := TDMethodDefinition
    className: self theClass name
    isMeta: self inClass isMeta
    selector: self selector.
  (TDMethodDefinitionElementBuilder new
    object: newObject;
    yourself) buildClientElementUsing: self theEditorSpec editorAspect: nil ]