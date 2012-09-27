printing
printIndexedOn: aStream indent: indent withOptions: options
    "[124298753 sz:6 cls: 66817 Array] a Array
  #1 [10 sz:0 cls: 74241 SmallInteger] 1 == 0x1
  #2 [18 sz:0 cls: 74241 SmallInteger] 2 == 0x2
  #3 [268 sz:0 cls: 68097 Boolean] true
  #4 [12 sz:0 cls: 68097 Boolean] false
  #5 [42 sz:0 cls: 74241 SmallInteger] 5 == 0x5
  #6 [124296961 sz:2 cls: 67073 Association] a Association
    key                 [124296449 sz:1 cls: 74753 String] 
      1 'a'                       61
    value               [338 sz:0 cls: 74241 SmallInteger] 42 == 0x2a"

    "byte objects printed differently ... bytes in hex on same line"

    indexed ifNil: [ ^ self ].
    1 to: indexed size do: [ :index | 
        | proxy |
        proxy := indexed at: index.
        aStream
            tab: indent;
            nextPut: $#;
            nextPutAll: index printString;
            space.
        proxy printOn: aStream indent: indent + 1 withOptions: options ]