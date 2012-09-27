printing
printOn: aStream indent: indent
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

    self header printOn: aStream.
    self printNamedOn: aStream indent: indent.
    self printIndexedOn: aStream indent: indent