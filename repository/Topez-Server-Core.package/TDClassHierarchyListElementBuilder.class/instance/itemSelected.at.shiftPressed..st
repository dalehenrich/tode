tools
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect classDef itemAttribute classDefClientElement instanceSelClientElement classSelClientElement stonArray |
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
        windowName: #'classDefinition';
        yourself).
  instanceSelClientElement := classDef
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'instanceSelectors')
        windowName: #'instanceSelectors';
        yourself).
  classSelClientElement := classDef
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'classSelectors')
        windowName: #'classSelectors';
        yourself).
  stonArray := {#'editStonElement:'.
  classDefClientElement.
  #'editStonElement:'.
  instanceSelClientElement.
  #'editStonElement:'.
  classSelClientElement}.
  (theWindowName ~~ #'hierarchy' or: [ selectedClass ~~ classDef theClass ])
    ifTrue: [ 
      | hierarchyClientElement |
      hierarchyClientElement := classDef
        clientElementUsing:
          ((TDEditorSpec topez: listElement topez editorAspect: #'hierarchyList')
            windowName: #'hierarchy';
            yourself).
      selectedClass := classDef theClass.
      stonArray
        addAll:
          {#'editStonElement:'.
          hierarchyClientElement} ].
  stonArray addAll: (self enableDisableMenuItems: classDef).
  ^ listElement objectSerializer toString: stonArray