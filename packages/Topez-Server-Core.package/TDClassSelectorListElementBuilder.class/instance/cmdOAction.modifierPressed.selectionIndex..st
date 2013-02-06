as yet unclassified
cmdOAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-o - open method template"

  | element windowBuilder |
  windowBuilder := TDTemplateMethodElementBuilder new
    methodClass: self theClass;
    isMeta: self object isMeta;
    yourself.
  element := windowBuilder
    buildClientElement: nil
    topez: listElement topez
    aspect: #'method'
    selectionIndex: 0
    windowName: #'method'
    windowId: nil
    windowLocation: nil.
  ^ listElement topez editElement: element