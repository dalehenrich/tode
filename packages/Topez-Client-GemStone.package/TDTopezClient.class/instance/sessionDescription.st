as yet unclassified
sessionDescription
    sessionDescription ifNil: [ sessionDescription := self class defaultSessionDescription ].
    ^ sessionDescription