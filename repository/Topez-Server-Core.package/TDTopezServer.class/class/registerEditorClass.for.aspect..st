accessing
registerEditorClass: anEditorClass for: aDomainClass aspect: anAspect
  | classMap |
  classMap := self nodeEditors
    at: aDomainClass className
    ifAbsent: [ self nodeEditors at: aDomainClass className put: Dictionary new ].
  classMap at: anAspect put: anEditorClass className