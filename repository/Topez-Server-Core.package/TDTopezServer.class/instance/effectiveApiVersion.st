accessing
effectiveApiVersion
  ^ effectiveApiVersion
    ifNil: [ effectiveApiVersion := '1.2.1' asMetacelloVersionNumber ]