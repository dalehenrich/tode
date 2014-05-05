as yet unclassified
testEditCommand
  "run without errors ... to keep me honest"

  | node |
  node := self createSenderNode.
  self
    evaluateCommandString: 'edit --help ';
    evaluateCommandString: 'edit ' , node printString;
    evaluateCommandString: 'edit --inspect ' , node printString;
    evaluateCommandString: 'edit --navigate ' , node printString;
    evaluateCommandString: 'edit --print ' , node printString;
    evaluateCommandString: 'eval `Object`; edit --editorAspect=classDefinition';
    evaluateCommandString: 'eval `Object`; edit --editorAspect=classComment';
    yourself.
  self
    evaluateCommandString:
        'edit --editorAspect=edit --builderAspect=view ' , node printString;
    evaluateCommandString:
        'edit --editorAspect=edit --builderAspect=inspect ' , node printString;
    evaluateCommandString:
        'edit --editorAspect=navigate --builderAspect=view ' , node printString;
    evaluateCommandString:
        'edit --editorAspect=navigate --builderAspect=inspect ' , node printString;
    yourself