as yet unclassified
implementorsOf: aString level: level
    | aCollection selector |
    selector := aString asSymbol.
    aCollection := OrderedCollection new.
    SystemNavigation default
        allBehaviorsDo: [ :behavior | 
            (behavior includesSelector: selector)
                ifTrue: [ aCollection add: (self messageElementFor: behavior selector: selector messagePattern: aString) ] ].
    ^ self toString: (TZMessageElement hierarchyOrderFor: aCollection) level: level