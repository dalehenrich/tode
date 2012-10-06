testing
testListSelectors
    | result x |
    result := self evaluator
        evaluate: 'set class TZClientTests';
        evaluate: 'list selectors'.
    self assert: (x := result asString) = '{ sz:6 Array} #(''defaultSessionDes...etc...'