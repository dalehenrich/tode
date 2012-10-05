printing
basicPrintOn: aStream indent: indent
    self header printOn: aStream.
    self basicPrintNamedOn: aStream indent: indent.
    self basicPrintIndexedOn: aStream indent: indent