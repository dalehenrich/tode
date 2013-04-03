as yet unclassified
thru4
  "db thru to step into the block

    db break @12 TDTodeTestClass>>thru4
    db break @8 TDTodeTestClass>>thru4
    /tools/debug/examples/st6
"

  | tmp |
  tmp := 3 + 4.
  self
    thru2: [ :arg | 
      tmp := tmp + 4.	"break here ... db thru"
      self
        thru2: [ :arg | 
          "step into me without stepping into thru2: use db thru"
          tmp := tmp + arg ] ].
  tmp := tmp + 4.
  ^ tmp - 6