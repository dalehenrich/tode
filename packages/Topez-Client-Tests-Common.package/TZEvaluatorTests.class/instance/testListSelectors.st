tests
testListSelectors
    | result x |
    result := self runListSelectors.
    self assert: (x := result asString) = 'basicPrintOn:indent:
className
indexedSize
namedSize
on:
proxyPrintString
proxySize
renderWith:on:indent:'