accessing
registerBuilderClass: aBuilderClass for: aDomainClass aspect: anAspect
  | builderClassMap |
  builderClassMap := self concreteClass nodeBuilders
    at: aDomainClass name
    ifAbsent: [ self concreteClass nodeBuilders at: aDomainClass name put: Dictionary new ].
  builderClassMap at: anAspect put: aBuilderClass name