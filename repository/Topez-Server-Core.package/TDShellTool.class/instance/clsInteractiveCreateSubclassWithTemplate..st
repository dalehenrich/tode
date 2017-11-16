cls
clsInteractiveCreateSubclassWithTemplate: classCreationTemplate
  | newClass classDefinitionString |
  classDefinitionString := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template: classCreationTemplate) signal.
  classDefinitionString ifNil: [ ^ nil ].
  newClass := self topez createClassFrom: classDefinitionString.
  ^ newClass