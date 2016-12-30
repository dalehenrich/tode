as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | editorAspect parent obj itemAttribute windowName highlightIndex parentList objName newParent |
  index ifNil: [ ^ nil ].
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
  (obj respondsTo: #'parent:')
    ifTrue: [ obj parent: parent ].
  editorAspect := itemAttribute aspect.
  editorAspect == #'edit'
    ifTrue: [ "navigator window always navigates"
      editorAspect := #'navigate' ].
  parentList := itemAttribute list copy.
  itemAttribute label = '.'
    ifTrue: [ "place holder"
      obj := obj dotSelfObject
        asTDObjectNode: obj
        topez: listElement topez
        aspect: nil.
      objName := self object displayWith: listElement displayPolicy.
      obj name: objName ]
    ifFalse: [ itemAttribute label = '..'
        ifTrue: [ "lets highlight ourselves in the .. list ..."
          parentList isEmpty not
            ifTrue: [ | ar |
              ar := parentList removeLast.
              highlightIndex := ar at: 1.
              editorAspect := ar at: 2 ] ]
        ifFalse: [ parentList add: {index.
              (itemAttribute aspect)	"use original aspect"} ] ].
  windowName := listElement editorWindowName.
  obj
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: editorAspect)
        parentObject: parent;
        highlightIndex: highlightIndex;
        parentList: parentList;
        windowName: windowName;
        yourself).
  ^ nil