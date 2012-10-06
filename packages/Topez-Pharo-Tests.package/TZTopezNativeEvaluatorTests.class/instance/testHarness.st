testing
testHarness
    "interactive test bed"

    | result |
    true
        ifTrue: [ ^ self ].
    result := self evaluator
        evaluate: 'set class Object';
        evaluate: 'edit method: at:put:'.
    result := self evaluator evaluate: 'edit 1 method: at:'.
    self assert: false