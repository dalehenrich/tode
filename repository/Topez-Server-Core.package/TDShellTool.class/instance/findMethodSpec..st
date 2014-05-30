as yet unclassified
findMethodSpec: methodSpec
  | specArray selector |
  specArray := self parseMethodSpec: methodSpec trimBoth.
  selector := specArray at: 2.
  ^ {(TDMethodDefinition
    className: (specArray at: 1)
    isMeta: (specArray at: 3)
    selector: selector
    messagePattern: selector
    messagePatternIsRegex: false)}