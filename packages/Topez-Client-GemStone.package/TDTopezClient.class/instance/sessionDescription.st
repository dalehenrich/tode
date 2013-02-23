as yet unclassified
sessionDescription
  sessionDescription
    ifNil: [ sessionDescription := self class sessionNamed: self shell sessionName ].
  ^ sessionDescription