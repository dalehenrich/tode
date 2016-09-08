as yet unclassified
trimStackTo: level
  "Assume to be sent after successful accept of new version of method"

  self trimmed: true.
  self session
    executeBlock: [ :procOop :level | (Object _objectForOop: procOop) _trimStackToLevel: level ]
    with: self processOop.
  self resetFrames.
  self navigateFrame: 1.
  self refreshViews