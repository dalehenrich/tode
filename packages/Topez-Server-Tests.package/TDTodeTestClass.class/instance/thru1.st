as yet unclassified
thru1
  "db thru to step into the block

    db break @4 TDTodeTestClass>>thru1
    -- after the block ... but leaving some open
    -- an alternate scheme will have #thru2 skip block evaluation 
    db break @5 TDTodeTestClass>>thru1
    db break @7 TDTodeTestClass>>thru1
    /tools/debug/examples/st5

db break @6 TDDebugTool>>dbSetThruBreaksFor:
# db break @9 TDDebugTool>>dbSetThruBreaksFor:
"

  | tmp |
  tmp := 3 + 4.
  self
    thru2: [ :arg | 
      "step into me without stepping into thru2: use db thru"
      tmp := tmp + (self thru3: arg) ].
  tmp := tmp + 4.
  ^ tmp - 6