as yet unclassified
breakpoint1
  "set break1 and break2 ... execute method, debug, db continue, should hit second breakpoint and update stack and stack frame:

    db break @2 TDTodeTestClass>>breakpoint1
    db break @4 TDTodeTestClass>>breakpoint1
    /tools/debug/examples/st1
    debug
    db continue
"

  | tmp |
  tmp := 3 + 4.	"first breakpoint @2"
  tmp := tmp + 3.	"second breakpoint @4"
  ^ tmp