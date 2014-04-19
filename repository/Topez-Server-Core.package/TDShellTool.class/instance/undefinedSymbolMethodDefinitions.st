as yet unclassified
undefinedSymbolMethodDefinitions
  | map list |
  map := self undefinedSymbolsMap.
  list := Set new.
  map
    keysAndValuesDo: [ :undefSymbol :dictOrSet | 
      (dictOrSet isKindOf: Dictionary)
        ifTrue: [ 
          dictOrSet
            keysAndValuesDo: [ :cls :selectorList | 
              selectorList
                do: [ :selector | 
                  list
                    add:
                      (TDMethodDefinition
                        className: cls theNonMetaClass name
                        isMeta: cls isMeta
                        selector: selector
                        messagePattern: undefSymbol asString) ] ] ] ].
  ^ list