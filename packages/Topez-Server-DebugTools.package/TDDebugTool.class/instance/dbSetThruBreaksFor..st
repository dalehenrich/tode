as yet unclassified
dbSetThruBreaksFor: node
  | allBreakPoints srcOffsets frame method originalBreakPoints ipMarkerArray stepIps |
  stackNode := node.
  frame := self dbStack currentFrame.
  method := frame method.
  allBreakPoints := method _allBreakpoints.
  1 to: allBreakPoints size by: 3 do: [ :index | allBreakPoints at: index + 1 put: 'aGsNMethod: ' , (allBreakPoints at: index + 1) asOop asString ].
  srcOffsets := method _sourceOffsets.
  ipMarkerArray := method _buildIpMarkerArray.
  stepIps := Array new.	"stepIps contains IP number for each stepPoint "
  srcOffsets do: [ :offset | stepIps add: (ipMarkerArray at: offset) ].
  self halt.
  ^ originalBreakPoints