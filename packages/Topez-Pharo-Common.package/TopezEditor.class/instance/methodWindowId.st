accessing
methodWindowId
    methodWindowId ifNil: [ methodWindowId := self topez nextAvailableWindowId ].
    ^ methodWindowId