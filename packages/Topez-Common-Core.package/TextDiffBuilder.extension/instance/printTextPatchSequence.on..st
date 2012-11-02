*topez-common-core
printTextPatchSequence: seq on: aStream
    | crlf |
    crlf := String crlf asSet.
    seq
        do: [ :assoc | 
            | type contents |
            type := assoc key.
            contents := assoc value.
            aStream
                nextPutAll: (self stringForAttributes: type);
                nextPutAll: contents.	"Ensure that patches are separated by CRs"
            (contents notEmpty and: [ crlf includes: contents last ])
                ifFalse: [ aStream cr ] ]