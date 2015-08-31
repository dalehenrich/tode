tools
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect classDef itemAttribute classDefClientElement stonArray buttonBarClientElement classProtocolClientElement |
  index ifNil: [ ^ nil ].
  index > listElement itemCache size
    ifTrue: [ ^ nil ].
  itemAttribute := listElement itemCache at: index.
  classDef := itemAttribute object.
  aspect := itemAttribute aspect.
  TDClassDefinition
    selectClassNamed: classDef className
    topez: listElement topez.
  classDefClientElement := classDef
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'classDefinition')
        windowName: #'classicClassDef';
        windowLocation: #'classicClassDef';
        yourself).
  buttonBarClientElement := {classDef.
  {{#'instance'.
  #'browseInstanceProtocol:'.
  'instance'.
  'view instance-side methods'.
  true}.
  {#'class'.
  #'browseClassProtocol:'.
  'class'.
  'view class-side methods'.
  false}}}
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'buttonBar')
        windowName: #'classicClassButtonBar';
        windowLocation: #'classicClassButtonBar';
        yourself).
  classProtocolClientElement := classDef
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'classicProtocolList')
        windowName: #'classicProtocolList';
        windowLocation: #'classicProtocol';
        selectionIndex: 1;
        yourself).
  stonArray := {#'editStonElement:'.
  classDefClientElement.
  #'editStonElement:'.
  buttonBarClientElement.
  #'editStonElement:'.
  classProtocolClientElement}.
  (theWindowName ~~ #'hierarchy' or: [ selectedClass ~~ classDef theClass ])
    ifTrue: [ 
      | hierarchyClientElement |
      hierarchyClientElement := classDef
        clientElementUsing:
          ((TDEditorSpec topez: listElement topez editorAspect: #'classicHierarchyList')
            windowName: #'hierarchy';
            yourself).
      selectedClass := classDef theClass.
      stonArray
        addAll:
          {#'editStonElement:'.
          hierarchyClientElement} ].
  stonArray addAll: (self enableDisableMenuItems: classDef).
  ^ listElement objectSerializer toString: stonArray