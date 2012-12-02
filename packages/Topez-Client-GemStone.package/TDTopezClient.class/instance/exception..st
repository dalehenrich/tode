as yet unclassified
exception: anException
    | context |
    exception := anException.
    context := exception ifNotNil: [ exception context ].
    self setExceptionMessage
        valueWithArguments:
            {exception.
            context}