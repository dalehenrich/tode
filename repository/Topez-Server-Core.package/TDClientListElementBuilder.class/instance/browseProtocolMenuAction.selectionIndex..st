menu actions
browseProtocolMenuAction: listElement selectionIndex: selectionIndex
  | cls behaviorDef classDef instanceProtocolClientElement classProtocolClientElement |
  cls := (self selectedClass: listElement selectionIndex: selectionIndex)
    theNonMetaClass.
  behaviorDef := TDBehaviorDefinition className: cls name isMeta: true.
  classDef := behaviorDef asTDClassDefinition.
  instanceProtocolClientElement := classDef
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'protocolList')
        windowName: #'instanceProtocolList';
        windowLocation: #'instanceSelectors';
        windowLabel: 'instance protocol for ' , self theClass printString;
        yourself).
  classProtocolClientElement := behaviorDef
    clientElementUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'protocolList')
        windowName: #'classProtocolList';
        windowLocation: #'classSelectors';
        windowLabel: 'class protocol for ' , self theClass printString;
        yourself).
  ^ STON
    toString:
      {#'editStonElement:'.
      instanceProtocolClientElement.
      #'editStonElement:'.
      classProtocolClientElement}