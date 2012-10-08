accessing
classSelectorsWindowId
    classSelectorsWindowId ifNil: [ classSelectorsWindowId := self topez nextAvailableWindowId ].
    ^ classSelectorsWindowId