as yet unclassified
writePatchFrom: src to: dst
    "src and dst are allowed to bi nil to represent a non-existent source or destination state"

    | source target excess |
    source := src ifNotNil: [ self visitInFork: src ] ifNil: [ '' ].
    target := dst ifNotNil: [ self visitInFork: dst ] ifNil: [ '' ].
    excess := source size + target size > 20000.
    excess
        ifTrue: [ 
            "show at least header line"
            source := source copyUpTo: Character cr.
            target := target copyUpTo: Character cr ].	"there might have been no CR, check again"
    source size + target size > 20000
        ifFalse: [ stream nextPutAll: (TextDiffBuilder from: source to: target) buildTextPatch ].	"alert audience"
    excess
        ifTrue: [ 
            stream
                nextPutAll: '(excessive size, no diff calculated)';
                cr ]