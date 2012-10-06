testing
testListClassMethod
    | result x |
    result := self evaluator
        evaluate: 'set class TZEngine';
        evaluate: 'list classmethod: put:onStream:withOptions:'.
    self
        assert:
            (x := result asString withSqueakLineEndings)
                =
                    'put: object onStream: stream withOptions: options
    (self writer on: stream)
        options: options;
        nextPut: object'