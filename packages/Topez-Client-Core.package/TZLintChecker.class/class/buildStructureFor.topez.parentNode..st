as yet unclassified
buildStructureFor: rule topez: topez parentNode: parent
    | problemCount ruleName ruleNode result |
    (problemCount := rule problemCount) = 0
        ifTrue: [ ^ self ].
    ruleName := self conditionLabel: rule name problemCount: problemCount.
    rule isComposite
        ifTrue: [ 
            ruleNode := parent childNamed: ruleName addIfAbsent: true.
            rule rules do: [ :aRule | self buildStructureFor: aRule topez: topez parentNode: ruleNode ].
            ^ self ].
    parent addChildNode: (self nodeForResult: rule result topez: topez)