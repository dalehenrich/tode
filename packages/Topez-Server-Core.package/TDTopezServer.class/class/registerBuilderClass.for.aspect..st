accessing
registerBuilderClass: aBuilderClass for: aDomainClass aspect: anAspect
  | builderClassMap |
  builderClassMap := self nodeBuilders
    at: aDomainClass className
    ifAbsent: [ self nodeBuilders at: aDomainClass className put: Dictionary new ].
  builderClassMap at: anAspect put: aBuilderClass className