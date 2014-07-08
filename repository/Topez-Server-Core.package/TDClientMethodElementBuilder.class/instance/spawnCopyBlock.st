as yet unclassified
spawnCopyBlock
  "explicit direct reference to formatOnDisplay and formatOnAccept - nil should stay nil"

  (formatOnDisplay isNil and: [ formatOnAccept isNil ])
    ifTrue: [ ^ nil ].
  ^ [ 
  ((TDMethodDefinitionElementBuilder new
    object: self object;
    formatOnDisplay: false;
    formatOnAccept: false;
    yourself) buildClientElementUsing: self theEditorSpec editorAspect: nil)
    yourself ]