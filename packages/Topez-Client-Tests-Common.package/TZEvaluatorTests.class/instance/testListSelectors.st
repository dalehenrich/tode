tests
testListSelectors
    | result x |
    result := self runListSelectors.
    self assert: (x := result asString) = 'basicPrintOn:indent:
indexedSize
namedSize
on:
proxyClassName
proxyPrintString
proxySize
renderWith:on:indent:
storeLiteralAsNative:'