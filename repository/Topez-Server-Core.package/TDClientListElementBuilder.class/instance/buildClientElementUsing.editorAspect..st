tools
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | clientListElement theWindowLabel theWindowIsClosingBlock |
  clientListElement := super
    buildClientElementUsing: aTDEditorSpec
    editorAspect: editorAspect.
  aTDEditorSpec selectionIndex ~~ nil
    ifTrue: [ clientListElement selectedIndex: aTDEditorSpec selectionIndex ].
  aTDEditorSpec highlightIndex ~~ nil
    ifTrue: [ clientListElement highlightedIndex: aTDEditorSpec highlightIndex ].
  aTDEditorSpec parentList ~~ nil
    ifTrue: [ clientListElement parentList: aTDEditorSpec parentList ].
  ^ clientListElement
    parent: aTDEditorSpec parentObject;
    editorAspectSelector: #'activateListEditor';
    firstList: (self firstList: clientListElement);
    yourself