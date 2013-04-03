accessing
session
    session ifNil: [ session := TopezPharoSession new ].
    ^ session