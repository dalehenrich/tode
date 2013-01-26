as yet unclassified
dbSetThruBreaksFor: node during: aBlock
  | allBreakpointsSourceOffsets srcOffsets frame method ipMarkerArray stepIps thruStepPoints |
  stackNode := node.
  frame := self dbStack currentFrame.
  method := frame method.
  allBreakpointsSourceOffsets := method _allBreakpointsSourceOffsets.	"source offset for currently set breakpoints"
  srcOffsets := method _sourceOffsets.	"source offset for each breakpoint"
  ipMarkerArray := method _buildIpMarkerArray.	"IP indexed by source offset for current method context"
  stepIps := Array new.	"stepIps contains IP number for each stepPoint, nil when stepPoint is outside current context"
  srcOffsets do: [ :offset | stepIps add: (ipMarkerArray at: offset) ].
  thruStepPoints := Array new.
  1 to: srcOffsets size do: [ :stepPoint | 
    "stepPoints that are not in current context"
    (stepIps at: stepPoint)
      ifNil: [ 
        | aSourceOffset |
        aSourceOffset := srcOffsets at: stepPoint.
        (allBreakpointsSourceOffsets indexOf: aSourceOffset) = 0
          ifTrue: [ 
            "filter out set breakpoints and record the breakpoints we set"
            thruStepPoints add: stepPoint.
            method setBreakAtStepPoint: stepPoint ] ] ].
  aBlock
    ensure: [ 
      "clear thru breakpoints"
      thruStepPoints do: [ :stepPoint | method clearBreakAtStepPoint: stepPoint ] ]