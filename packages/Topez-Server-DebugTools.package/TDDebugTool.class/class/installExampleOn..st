as yet unclassified
installExampleOn: aTDTopezServer
  | examplesNode |
  (aTDTopezServer lookup: '/home')
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'halt';
            contents: '"opportunity to use debugger"
| block |
block := [:arg | arg halt].
block value: 100';
            yourself);
    yourself.
  (aTDTopezServer lookup: self commandPath)
    addChildNode:
      (examplesNode := TDDirectoryNode new
        name: 'examples';
        readMe: 'debugger examples';
        yourself).
  examplesNode
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st1';
            contents: 'TDTodeTestClass new breakpoint1';
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st2';
            contents: 'TDTodeTestClass new breakpoint2';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex1';
            contents:
                '#
# Example1: use `db continue` to hit next breakpoint & update debugger
#
db break @2 TDTodeTestClass>>breakpoint1
db break @4 TDTodeTestClass>>breakpoint1
/tools/debug/examples/st1
debug
db continue';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex2';
            contents:
                '#
# Example2: use `db over` to hit next breakpoint & update debugger
#
db break @2 TDTodeTestClass>>breakpoint2
db break @2 TDTodeTestClass>>breakpoint3
/tools/debug/examples/st2
debug
db over';
            yourself);
    yourself