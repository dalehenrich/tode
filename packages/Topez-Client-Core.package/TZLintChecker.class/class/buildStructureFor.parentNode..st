as yet unclassified
buildStructureFor: rule parentNode: parent
    | problemCount ruleName ruleNode result |
    (problemCount := rule problemCount) = 0
        ifTrue: [ ^ self ].
    ruleName := (rule name withSeparatorsCompacted copyReplaceAll: ' ' with: '_') , '(' , problemCount printString , ')'.
    rule isComposite
        ifTrue: [ 
            ruleNode := parent childNamed: ruleName addIfAbsent: true.
            rule rules do: [ :aRule | self buildStructureFor: aRule parentNode: ruleNode ].
            ^ self ].
    result := rule result.
    result
        classesDo: [ :cls | result selectorsForClass: cls do: [ :selector | parent addChildNode: (self leafNodeForClass: cls selector: selector) ] ]