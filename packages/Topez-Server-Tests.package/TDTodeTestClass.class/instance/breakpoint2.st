as yet unclassified
breakpoint2
  "set break1 and break2 ... execute method, debug, db continue, should hit second breakpoint and update stack and stack frame:

    db break @2 TDTodeTestClass>>breakpoint2
    db break @2 TDTodeTestClass>>breakpoint3
    /tools/debug/examples/st2
    debug
    db over
"

  self breakpoint3	"first breakpoint @2 second breakpoint in breakpoint3"