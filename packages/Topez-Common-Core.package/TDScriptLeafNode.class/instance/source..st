as yet unclassified
source: aString
    self contents: aString.
    block := self createBlockFromSource: aString.
    self parent addBlock value: self parent value: self