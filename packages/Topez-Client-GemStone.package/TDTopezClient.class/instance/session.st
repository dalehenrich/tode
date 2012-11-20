as yet unclassified
session
    session ifNil: [ session := self login ].
    ^ session