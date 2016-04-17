accessing
sessionDescription
  sessionDescription
    ifNil: [ sessionDescription := self defaultSessionDescription ].
  ^ sessionDescription