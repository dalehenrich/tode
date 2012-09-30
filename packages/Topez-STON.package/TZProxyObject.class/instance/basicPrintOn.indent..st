printing
basicPrintOn: aStream indent: indent
    self header printOn: aStream.
    self printNamedOn: aStream indent: indent.
    self printIndexedOn: aStream indent: indent