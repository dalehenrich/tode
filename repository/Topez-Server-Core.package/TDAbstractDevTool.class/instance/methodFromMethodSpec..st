as yet unclassified
methodFromMethodSpec: methodSpecString
  "class>>selector or class class>>selector"

  | selector className isMeta behavior specArray |
  specArray := self parseMethodSpec: methodSpecString.
  className := specArray at: 1.
  selector := specArray at: 2.
  isMeta := specArray at: 3.
  behavior := Smalltalk at: className asSymbol.
  isMeta
    ifTrue: [ behavior := behavior class ].
  ^ behavior compiledMethodAt: selector