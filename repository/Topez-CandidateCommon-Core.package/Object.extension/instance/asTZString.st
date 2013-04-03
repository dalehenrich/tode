*topez-candidatecommon-core
asTZString
    "in-lined printStinglImitTo:"

    | count stream res limit |
    true
        ifTrue: [ ^ self printString ].
    count := 0.
    limit := 20.
    stream := WriteStream on: String new.
    self printOn: stream.
    res := stream contents.
    res size <= limit
        ifTrue: [ ^ res ].
    ^ (res copyFrom: 1 to: limit) , '...etc...'