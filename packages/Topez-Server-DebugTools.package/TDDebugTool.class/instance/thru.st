as yet unclassified
thru
  "db thru"

  "set all breakpoints in current method (record which ones 
   were already set), when we come back from the breakpoint, 
   delete all except the ones already there"

  | node |
  node := self defaultHomeNode.
  self dbStep: #'over' for: node.	"yep over is the command to use"
  ^ self dbFinishStep: stackNode