as yet unclassified
breakpoint1
  "db continue to breakpoint:

    db break @2 TDTodeTestClass>>breakpoint1
    db break @4 TDTodeTestClass>>breakpoint1
    /tools/debug/examples/st1
    debug
    db continue
"

  | tmp |
  tmp := 3 + 4.	"first breakpoint @2 ... db continue"
  tmp := tmp + 3.	"second breakpoint @4"
  ^ tmp