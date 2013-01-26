as yet unclassified
installExampleOn: aTDTopezServer
  | examplesNode |
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
            contents:
                '| nsc |
nsc := Bag new.
1 to: 3 do: [ :index | nsc add: index -> index asString ].
nsc
  createEqualityIndexOn: ''key'' withLastElementClass: SmallInteger;
  createEqualityIndexOn: ''value'' withLastElementClass: String;
  yourself';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'ex1';
            contents:
                '#
# Example1: 
#  create an indexed collection, analyzeNsc
#  peruse the index directory at your liesure.
#
cd /home
/tools/index/examples/st1 | analyzeNsc
cd /home/index';
            yourself);
    yourself