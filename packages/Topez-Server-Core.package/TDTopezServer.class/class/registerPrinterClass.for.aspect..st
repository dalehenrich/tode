accessing
registerPrinterClass: aPrinterClass for: aDomainClass aspect: anAspect
  | classMap |
  classMap := self nodePrinters
    at: aDomainClass className
    ifAbsent: [ self nodePrinters at: aDomainClass className put: Dictionary new ].
  classMap at: anAspect put: aPrinterClass className