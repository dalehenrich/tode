accessing
registerBuilderClass: aBuilderClass for: aDomainClass aspect: anAspect
  | builderClassMap |
  builderClassMap := self concreteClass nodeBuilders
    at: aDomainClass className
    ifAbsent: [ self concreteClass nodeBuilders at: aDomainClass className put: Dictionary new ].
  builderClassMap at: anAspect put: aBuilderClass className