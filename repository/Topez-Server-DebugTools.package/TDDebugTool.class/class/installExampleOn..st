as yet unclassified
installExampleOn: aTDTopezServer
  | examplesNode |
  (aTDTopezServer lookup: '/examples')
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'halt';
            contents:
                '"opportunity to use debugger"
| block |
block := [:arg | arg halt].
block value: 100';
            yourself);
    yourself.
  (aTDTopezServer lookup: self commandPath)
    addChildNode:
      (examplesNode := TDDirectoryNode new
        name: 'examples';
        readMe:
            'ex1 - breakpoints: use `db continue`
ex2 - breakpoints: use `db over` and `db continue`
ex3 - breakpoints: `db continue` to hit next breakpoint
ex4 - breakpoints: `db continue` to hit next error
ex5 - breakpoints: `db thru` to step into block.
ex6 - breakpoints: `db thru` to step into block
ex7 - breakpoints: break in nested block context';
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
        (TDSmalltalkLeafNode new
            name: 'st3';
            contents: 'TDTodeTestClass new breakpoint4';
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st4';
            contents: 'TDTodeTestClass new breakpoint6';
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st5';
            contents: 'TDTodeTestClass new thru1';
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st6';
            contents: 'TDTodeTestClass new thru4';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex1';
            contents:
                '#
# Example1: 
#  open debugger upon breakpoint.
#  then use `db continue` 
#  to hit next breakpoint & update debugger
#
db break clear
db break @2 TDTodeTestClass>>breakpoint1
db break @4 TDTodeTestClass>>breakpoint1
/tools/debug/examples/st1';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex2';
            contents:
                '#
# Example2: 
#  open debugger upon breakpoint.
#  then use `db over` or `db continue` 
#  to hit next breakpoint & update debugger
#
db break clear
db break @2 TDTodeTestClass>>breakpoint2
db break @2 TDTodeTestClass>>breakpoint3
/tools/debug/examples/st2';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex3';
            contents:
                '#
# Example3: 
#  open debugger upon breakpoint.
#  then use `db over` or `db continue` 
#  to hit next halt & update debugger
#
db break clear
db break @2 TDTodeTestClass>>breakpoint4
/tools/debug/examples/st3';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex4';
            contents:
                '#
# Example4: 
#  open debugger upon breakpoint.
#  then use `db over` or `db continue` 
#  to hit next error & update debugger
#
db break clear
db break @2 TDTodeTestClass>>breakpoint6
/tools/debug/examples/st4';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex5';
            contents:
                '#
# Example5: 
#  open debugger upon breakpoint.
#  then use `db thru` to step into
#  the block without stepping into thru2
#
db break clear
db break @4 TDTodeTestClass>>thru1
db break @5 TDTodeTestClass>>thru1
db break @7 TDTodeTestClass>>thru1
/tools/debug/examples/st5';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex6';
            contents:
                '#
# Example6: 
#  open debugger upon breakpoint.
#  then use `db thru` to step into
#  the block without stepping into thru2
#
db break clear
db break @12 TDTodeTestClass>>thru4
db break @8 TDTodeTestClass>>thru4
/tools/debug/examples/st6';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex7';
            contents:
                '#
# Example7: 
#  breakpoint in a nested block 
#  look at home context for block
#
db break clear
db break @16 TDTodeTestClass>>thru4
/tools/debug/examples/st6';
            yourself);
    yourself