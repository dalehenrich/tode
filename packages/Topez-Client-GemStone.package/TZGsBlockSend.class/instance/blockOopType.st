as yet unclassified
blockOopType
    blockOopType ifNil: [ blockOopType := self session rawExecuteStringNB: self blockSource ].
    ^ blockOopType