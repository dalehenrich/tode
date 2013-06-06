as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | editorAspect parent obj itemAttribute windowName highlightIndex parentList toggled builderAspect objName |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
  editorAspect := itemAttribute aspect.
  editorAspect == #'edit'
    ifTrue: [ 
      "navigator window always navigates"
      editorAspect := #'navigate' ].
  parentList := itemAttribute list copy.
  toggled := false.
  index == 1
    ifTrue: [ 
      "."
      "toggle between view and inspect on subject of list"
      toggled := true.
      builderAspect := obj builderAspect.
      builderAspect == #'inspect'
        ifTrue: [ builderAspect := #'view' ]
        ifFalse: [ builderAspect := #'inspect' ].
      obj := obj dotSelfObject
        asTDObjectNode: obj
        topez: listElement topez
        aspect: builderAspect.
      objName := self object displayWith: listElement displayPolicy.
      obj name: objName ]
    ifFalse: [ 
      index == 2
        ifTrue: [ 
          ".."
          "lets highlight ourselves in the .. list ..."
          parentList isEmpty not
            ifTrue: [ 
              | ar |
              ar := parentList removeLast.
              highlightIndex := ar at: 1.
              editorAspect := ar at: 2 ] ]
        ifFalse: [ 
          parentList
            add:
              {index.
              (itemAttribute aspect)	"use original aspect"} ] ].
  windowName := listElement editorWindowName.
  toggled
    ifTrue: [ 
      "when we're browsing there is a diversity of windows involvled, so don't try to reuse the same window ... #view and #inspect reuse window as navigator"
      windowName := nil ].
  obj
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: editorAspect)
        builderAspect: builderAspect;
        parentObject: parent;
        highlightIndex: highlightIndex;
        parentList: parentList;
        windowName: windowName;
        yourself).
  ^ nil