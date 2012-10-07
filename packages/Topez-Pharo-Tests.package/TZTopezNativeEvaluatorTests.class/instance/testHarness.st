testing
testHarness
    "interactive test bed"

    | result |
    true
        ifTrue: [ ^ self ].
    result := self evaluator
        evaluate: 'set class Object';
        evaluate: 'edit method: at:put:';
        evaluate: 'set class Association';
        evaluate: 'edit 2 method: key:value:';
        yourself