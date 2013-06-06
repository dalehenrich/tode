accessing
registerEditorClass: anEditorClass for: aDomainClass aspect: anAspect
  | classMap |
  classMap := self concreteClass nodeEditors
    at: aDomainClass name
    ifAbsent: [ self concreteClass nodeEditors at: aDomainClass name put: Dictionary new ].
  classMap at: anAspect put: anEditorClass name