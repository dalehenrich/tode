as yet unclassified
nodeForResult: result topez: topez
    | label |
    label := self conditionLabel: result label problemCount: result problemCount.
    ^ TZObjectNode new
        name: label;
        extension: '';
        elementBlock: [ :node :nodeName :absentBlock | self halt ];
        collectionBlock: [ :node | 
                    | methodElements |
                    methodElements := OrderedCollection new.
                    result
                        classesDo: [ :cl | 
                            result
                                selectorsForClass: cl
                                do: [ :selector | methodElements add: (topez session messageElementFor: cl asTopezProxy selector: selector messagePattern: '') ] ].
                    TZMessageElement hierarchyOrderFor: methodElements ];
        listBlock: [ :node | 
                    | methodNames |
                    methodNames := OrderedCollection new.
                    result
                        classesDo: [ :cl | 
                            result
                                selectorsForClass: cl
                                do: [ :selector | 
                                    | methodName |
                                    methodName := self
                                        conditionLabel: cl name asString , '>>' , selector asString
                                        problemCount: 0.
                                    methodNames add: methodName ] ].
                    methodNames sort ];
        yourself