converting
unstyledTextFrom: aText
    ^ self stylingEnabled
        ifTrue: [ super unstyledTextFrom: aText ]
        ifFalse: [ aText asText ]