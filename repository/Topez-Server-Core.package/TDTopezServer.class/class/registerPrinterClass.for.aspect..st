accessing
registerPrinterClass: aPrinterClass for: aDomainClass aspect: anAspect
  | classMap |
  classMap := self concreteClass nodePrinters
    at: aDomainClass name
    ifAbsent: [ self concreteClass nodePrinters at: aDomainClass name put: Dictionary new ].
  classMap at: anAspect put: aPrinterClass name