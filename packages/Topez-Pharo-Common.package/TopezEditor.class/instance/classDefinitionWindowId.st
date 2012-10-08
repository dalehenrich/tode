accessing
classDefinitionWindowId
    classDefinitionWindowId ifNil: [ classDefinitionWindowId := self topez nextAvailableWindowId ].
    ^ classDefinitionWindowId