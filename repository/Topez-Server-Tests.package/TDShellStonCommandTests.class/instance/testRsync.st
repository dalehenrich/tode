as yet unclassified
testRsync
  | stonTool command tmpNode nodePath srcNode destNode |
  true
    ifTrue: [ ^ self ].
  nodePath := '/tmp/tests/ston/'.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  srcNode
    addChildNode:
      (TDSmalltalkLeafNode new
        name: 'source';
        contents: '3+4';
        yourself).
  command := TDCommandLine
    commandLine:
      'ston rsync --update ' , srcNode printString , 'source ' , destNode printString
    redirectTarget: nil.
  command hasSubCommand: true.
  stonTool := topez toolInstanceFor: 'ston'.
  stonTool todeCommand: command.
  stonTool stonrsync