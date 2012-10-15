as yet unclassified
sendersOf: aString
    | aCollection selector special byte |
    selector := aString asSymbol.
    aCollection := OrderedCollection new.
    special := Smalltalk hasSpecialSelector: selector ifTrueSetByte: [ :b | byte := b ].
    SystemNavigation default
        allBehaviorsDo: [ :behavior | 
            (behavior thoroughWhichSelectorsReferTo: selector special: special byte: byte)
                do: [ :sel | aCollection add: (self messageElementFor: behavior selector: selector messagePattern: aString) ] ].
    ^ aCollection