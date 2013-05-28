accessing
registerPrinterClass: aPrinterClass for: aDomainClass aspect: anAspect
  | classMap |
  classMap := self concreteClass nodePrinters
    at: aDomainClass className
    ifAbsent: [ self concreteClass nodePrinters at: aDomainClass className put: Dictionary new ].
  classMap at: anAspect put: aPrinterClass className