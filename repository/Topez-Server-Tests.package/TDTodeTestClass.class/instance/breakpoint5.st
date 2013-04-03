as yet unclassified
breakpoint5
  "called by breakpoint4 ... "

  | tmp |
  tmp := 3 halt + 4.	"halt as expected"
  tmp := tmp + 3.
  ^ tmp